﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Management.Automation;
using Microsoft.Azure.PowerShell.Cmdlets.Blueprint.Properties;
using ParameterSetNames = Microsoft.Azure.Commands.Blueprint.Common.BlueprintConstants.ParameterSetNames;
using ParameterHelpMessages = Microsoft.Azure.Commands.Blueprint.Common.BlueprintConstants.ParameterHelpMessages;
using System.Text.RegularExpressions;
using Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters;
using Microsoft.Azure.Commands.Blueprint.Models;
using System.Collections;
using Microsoft.Azure.Management.Blueprint.Models;
using Microsoft.Azure.Commands.Blueprint.Common;
using Microsoft.WindowsAzure.Commands.Utilities.Common;

namespace Microsoft.Azure.Commands.Blueprint.Cmdlets
{
    [Cmdlet(VerbsCommon.Set, ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "BlueprintAssignment", SupportsShouldProcess = true, DefaultParameterSetName = ParameterSetNames.CreateBlueprintAssignment), OutputType(typeof(PSBlueprintAssignment))]
    public class SetAzureRMBlueprintAssignment : BlueprintCmdletBase
    {
        #region Parameters
        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = true, ValueFromPipelineByPropertyName = true, HelpMessage = ParameterHelpMessages.BlueprintAssignmentName)]
        [ValidatePattern("^[0-9a-zA-Z_-]*$", Options = RegexOptions.Compiled | RegexOptions.CultureInvariant)]
        [ValidateNotNullOrEmpty]
        public string Name { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = true, ValueFromPipeline = true, HelpMessage = ParameterHelpMessages.BlueprintObject)]
        [ValidateNotNull]
        public PSBlueprintBase Blueprint { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, ValueFromPipelineByPropertyName = true, HelpMessage = ParameterHelpMessages.SubscriptionIdToAssign)]
        [ValidateNotNullOrEmpty]
        public string[] SubscriptionId { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = true, ValueFromPipelineByPropertyName = true, HelpMessage = ParameterHelpMessages.Location)]
        [ValidateNotNullOrEmpty]
        [LocationCompleter("Microsoft.Batch/operations")]
        public string Location { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, ValueFromPipelineByPropertyName = true)]
        [ValidateNotNullOrEmpty]
        public Hashtable ResourceGroupParameter { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, ValueFromPipelineByPropertyName = true, HelpMessage = ParameterHelpMessages.Parameters)]
        [ValidateNotNull]
        public Hashtable Parameter { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, HelpMessage = ParameterHelpMessages.SystemAssignedIdentity)]
        public SwitchParameter SystemAssignedIdentity { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, ValueFromPipelineByPropertyName = true, HelpMessage = ParameterHelpMessages.UserAssignedIdentity)]
        [ValidateNotNullOrEmpty]
        public string UserAssignedIdentity { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, HelpMessage = ParameterHelpMessages.LockFlag)]
        public PSLockMode? Lock { get; set; }

        [Parameter(ParameterSetName = ParameterSetNames.CreateBlueprintAssignment, Mandatory = false, HelpMessage = ParameterHelpMessages.SecureString)]
        [ValidateNotNullOrEmpty]
        public Hashtable SecureStringParameter { get; set; }
        #endregion Parameters

        #region Cmdlet Overrides
        public override void ExecuteCmdlet()
        {
            try
            {
                var subscriptionsList = SubscriptionId ?? new[] { DefaultContext.Subscription.Id };

                if (ShouldProcess(string.Join(",", subscriptionsList), string.Format(Resources.UpdateAssignmentShouldProcessString, Name)))
                {
                    var assignment = CreateAssignmentObject(
                        this.IsParameterBound(c => c.UserAssignedIdentity)
                            ? ManagedServiceIdentityType.UserAssigned
                            : ManagedServiceIdentityType.SystemAssigned,
                        this.IsParameterBound(c => c.UserAssignedIdentity)
                            ? UserAssignedIdentity
                            : null,
                        Location,
                        Blueprint.Id,
                        Lock,
                        Parameter,
                        ResourceGroupParameter,
                        SecureStringParameter);

                    foreach (var subscription in subscriptionsList)
                    {
                        var scope = Utils.GetScopeForSubscription(subscription);
                        ThrowIfAssignmentNotExist(scope, Name);
                        // Register Blueprint RP
                        RegisterBlueprintRp(subscription);

                        if (!this.IsParameterBound(c => c.UserAssignedIdentity))
                        {
                            var spnObjectId = GetBlueprintSpn(scope, Name);
                            AssignOwnerPermission(subscription, spnObjectId);
                        }

                        WriteObject(BlueprintClient.CreateOrUpdateBlueprintAssignment(scope, Name, assignment));
                    }
                }
            }
            catch (Exception ex)
            {
                WriteExceptionError(ex);
            }
        }
        #endregion Cmdlet Overrides
    }
}
