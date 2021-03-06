#
# Module manifest for module 'PSGet_Az.ApiManagement'
#
# Generated by: Microsoft Corporation
#
# Generated on: 5/15/2019
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '1.1.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '4f58d643-631f-4d13-a205-15292af40748'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Api Management service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For more information Api Management, please visit the following: https://docs.microsoft.com/azure/api-management/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '1.5.2'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = '.\AutoMapper.dll', 
               '.\Microsoft.Azure.Management.ApiManagement.dll', 
               '.\Microsoft.WindowsAzure.Storage.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 
               '.\Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.generated.format.ps1xml', 
               '.\Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.ServiceManagement.generated.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('.\Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.dll', 
               '.\Microsoft.Azure.PowerShell.Cmdlets.ApiManagement.ServiceManagement.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Add-AzApiManagementApiToProduct', 
               'Add-AzApiManagementProductToGroup', 'Add-AzApiManagementRegion', 
               'Add-AzApiManagementUserToGroup', 'Backup-AzApiManagement', 
               'Export-AzApiManagementApi', 'Get-AzApiManagement', 
               'Get-AzApiManagementApi', 'Get-AzApiManagementApiRelease', 
               'Get-AzApiManagementApiRevision', 'Get-AzApiManagementApiSchema', 
               'Get-AzApiManagementApiVersionSet', 
               'Get-AzApiManagementAuthorizationServer', 
               'Get-AzApiManagementBackend', 'Get-AzApiManagementCache', 
               'Get-AzApiManagementCertificate', 'Get-AzApiManagementDiagnostic', 
               'Get-AzApiManagementGroup', 'Get-AzApiManagementIdentityProvider', 
               'Get-AzApiManagementLogger', 'Get-AzApiManagementNetworkStatus', 
               'Get-AzApiManagementOpenIdConnectProvider', 
               'Get-AzApiManagementOperation', 'Get-AzApiManagementPolicy', 
               'Get-AzApiManagementProduct', 'Get-AzApiManagementProperty', 
               'Get-AzApiManagementSsoToken', 'Get-AzApiManagementSubscription', 
               'Get-AzApiManagementTenantAccess', 
               'Get-AzApiManagementTenantGitAccess', 
               'Get-AzApiManagementTenantSyncState', 'Get-AzApiManagementUser', 
               'Get-AzApiManagementUserSsoUrl', 'Import-AzApiManagementApi', 
               'New-AzApiManagement', 'New-AzApiManagementApi', 
               'New-AzApiManagementApiRelease', 'New-AzApiManagementApiRevision', 
               'New-AzApiManagementApiSchema', 'New-AzApiManagementApiVersionSet', 
               'New-AzApiManagementAuthorizationServer', 
               'New-AzApiManagementBackend', 
               'New-AzApiManagementBackendCredential', 
               'New-AzApiManagementBackendProxy', 
               'New-AzApiManagementBackendServiceFabric', 
               'New-AzApiManagementCache', 'New-AzApiManagementCertificate', 
               'New-AzApiManagementContext', 
               'New-AzApiManagementCustomHostnameConfiguration', 
               'New-AzApiManagementDiagnostic', 'New-AzApiManagementGroup', 
               'New-AzApiManagementHttpMessageDiagnostic', 
               'New-AzApiManagementIdentityProvider', 'New-AzApiManagementLogger', 
               'New-AzApiManagementOpenIdConnectProvider', 
               'New-AzApiManagementOperation', 
               'New-AzApiManagementPipelineDiagnosticSetting', 
               'New-AzApiManagementProduct', 'New-AzApiManagementProperty', 
               'New-AzApiManagementRegion', 'New-AzApiManagementSamplingSetting', 
               'New-AzApiManagementSslSetting', 'New-AzApiManagementSubscription', 
               'New-AzApiManagementSystemCertificate', 'New-AzApiManagementUser', 
               'New-AzApiManagementUserToken', 'New-AzApiManagementVirtualNetwork', 
               'Publish-AzApiManagementTenantGitConfiguration', 
               'Remove-AzApiManagement', 'Remove-AzApiManagementApi', 
               'Remove-AzApiManagementApiFromProduct', 
               'Remove-AzApiManagementApiRelease', 
               'Remove-AzApiManagementApiRevision', 
               'Remove-AzApiManagementApiSchema', 
               'Remove-AzApiManagementApiVersionSet', 
               'Remove-AzApiManagementAuthorizationServer', 
               'Remove-AzApiManagementBackend', 'Remove-AzApiManagementCache', 
               'Remove-AzApiManagementCertificate', 
               'Remove-AzApiManagementDiagnostic', 'Remove-AzApiManagementGroup', 
               'Remove-AzApiManagementIdentityProvider', 
               'Remove-AzApiManagementLogger', 
               'Remove-AzApiManagementOpenIdConnectProvider', 
               'Remove-AzApiManagementOperation', 'Remove-AzApiManagementPolicy', 
               'Remove-AzApiManagementProduct', 
               'Remove-AzApiManagementProductFromGroup', 
               'Remove-AzApiManagementProperty', 'Remove-AzApiManagementRegion', 
               'Remove-AzApiManagementSubscription', 'Remove-AzApiManagementUser', 
               'Remove-AzApiManagementUserFromGroup', 'Restore-AzApiManagement', 
               'Save-AzApiManagementTenantGitConfiguration', 'Set-AzApiManagement', 
               'Set-AzApiManagementApi', 'Set-AzApiManagementApiRevision', 
               'Set-AzApiManagementApiSchema', 'Set-AzApiManagementApiVersionSet', 
               'Set-AzApiManagementAuthorizationServer', 
               'Set-AzApiManagementBackend', 'Set-AzApiManagementCertificate', 
               'Set-AzApiManagementDiagnostic', 'Set-AzApiManagementGroup', 
               'Set-AzApiManagementIdentityProvider', 'Set-AzApiManagementLogger', 
               'Set-AzApiManagementOpenIdConnectProvider', 
               'Set-AzApiManagementOperation', 'Set-AzApiManagementPolicy', 
               'Set-AzApiManagementProduct', 'Set-AzApiManagementProperty', 
               'Set-AzApiManagementSubscription', 
               'Set-AzApiManagementTenantAccess', 'Set-AzApiManagementUser', 
               'Update-AzApiManagementApiRelease', 'Update-AzApiManagementCache', 
               'Update-AzApiManagementRegion'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','ApiManagement'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Created new Cmdlets for managing diagnostics at the global and API Scope
    - **Get-AzApiManagementDiagnostic** - Get the diagnostics configured a global or api Scope
    - **New-AzApiManagementDiagnostic** - Create new diagnostics at the global scope or api Scope
    - **New-AzApiManagementHttpMessageDiagnostic** - Create diagnostic setting for which Headers to log and the size of Body Bytes
    - **New-AzApiManagementPipelineDiagnosticSetting** - Create Diagnostic settings for incoming/outgoing HTTP messages to the Gateway.
    - **New-AzApiManagementSamplingSetting** - Create Sampling Setting  for the requests/response for a diagnostic
    - **Remove-AzApiManagementDiagnostic** - Remove a diagnostic entity at global or api scope
    - **Set-AzApiManagementDiagnostic** - Update a diagnostic Entity at global or api scope
* Created new Cmdlets for managing Cache in ApiManagement service
    - **Get-AzApiManagementCache** - Get the details of the Cache specified by identifier or all caches
    - **New-AzApiManagementCache** - Create a new ''default'' Cache or Cache in a particular azure ''region''
    - **Remove-AzApiManagementCache** - Remove a cache
    - **Update-AzApiManagementCache** - Update a cache
* Created new Cmdlets for managing API Schema
    - **New-AzApiManagementSchema** - Create a new Schema for an API
    - **Get-AzApiManagementSchema** - Get the schemas configured in the API
    - **Remove-AzApiManagementSchema** - Remove the schema configured in the API
    - **Set-AzApiManagementSchema** - Update the schema configured in the API
* Created new Cmdlet for generating a User Token. 
    - **New-AzApiManagementUserToken** - Generate a new User Token valid for 8 hours by default.Token for the ''GIT'' user can be generated using this cmdlet./
* Created a new cmdlet to retrieving the Network Status
    - **Get-AzApiManagementNetworkStatus** - Get the Network status connectivity of resources on which API Management service depends on. This is useful when deploying ApiManagement service into a Virtual Network and validing whether any of the dependencies are broken.
* Updated cmdlet **New-AzApiManagement** to manage ApiManagement service 
    - Added support for the new ''Consumption'' SKU
    - Added support to turn the ''EnableClientCertificate'' flag on for ''Consumption'' SKU
    - The new cmdlet **New-AzApiManagementSslSetting** allows configuring ''TLS/SSL'' setting on the ''Backend'' and ''Frontend''. This can also be used to configure ''Ciphers'' like ''3DES'' and ''ServerProtocols'' like ''Http2'' on the ''Frontend'' of an ApiManagement service.
    - Added support for configuring the ''DeveloperPortal'' hostname on ApiManagement service.
* Updated cmdlets **Get-AzApiManagementSsoToken** to take ''PsApiManagement'' object as input
* Updated the cmdlet to display Error Messages inline 
     > PS D:\github\azure-powershell> Set-AzApiManagementPolicy -Context  -PolicyFilePath C:\wrongpolicy.xml -ApiId httpbin
     >   Set-AzApiManagementPolicy : 
     Error Code: ValidationError
     Error Message: One or more fields contain incorrect values:
     Error Details:
        [Code=ValidationError, Message=Error in element ''log-to-eventhub'' on line 3, column 10: Logger not found, Target=log-to-eventhub]
* Updated cmdlet **Export-AzApiManagementApi** to export APIs in ''OpenApi 3.0'' format
* Updated cmdlet **Import-AzApiManagementApi**
    - To import Api from ''OpenApi 3.0'' document specification
    - To override the ''PsApiManagementSchema'' property specified in any (''Swagger'', ''Wadl'', ''Wsdl'', ''OpenApi'') document.
    - To override the ''ServiceUrl'' property specified in any document.
* Updated cmdlet **Get-AzApiManagementPolicy** to return policy in Non-Xml escaped ''format'' using ''rawxml''
* Updated cmdlet **Set-AzApiManagementPolicy** to accept policy in Non-Xml escaped ''format'' using ''rawxml'' and Xml escaped using ''xml''
* Updated cmdlet **New-AzApiManagementApi** 
    - To configure API with ''OpenId'' authorization server.
    - To create an API in an ''ApiVersionSet''
    - To clone an API using ''SourceApiId'' and ''SourceApiRevision''.
    - Ability to configure ''SubscriptionRequired'' at the Api scope. 
* Updated cmdlet **Set-AzApiManagementApi**
    - To configure API with ''OpenId'' authorization server.
    - To updated an API into an ''ApiVersionSet''    
    - Ability to configure ''SubscriptionRequired'' at the Api scope. 
* Updated cmdlet **New-AzApiManagementRevision**
    - To clone (copy tags, products, operations and policies) an existing revision using ''SourceApiRevision''. The new Revision assumes the ''ApiId'' of the parent.
    - To provide an ''ApiRevisionDescription''
    - To override the ''ServiceUrl'' when cloning an API.
* Updated cmdlet **New-AzApiManagementIdentityProvider**
    - To configure ''AAD'' or ''AADB2C'' with an ''Authority''
    - To setup ''SignupPolicy'', ''SigninPolicy'', ''ProfileEditingPolicy'' and ''PasswordResetPolicy''
* Updated cmdlet **New-AzApiManagementSubscription**
    - To account for the new SubscriptonModel using ''Scope'' and ''UserId''
    - To account for the old subscription model using ''ProductId'' and ''UserId''
    - Add support to enable ''AllowTracing'' at the subscription level.
* Updated cmdlet **Set-AzApiManagementSubscription**
    - To account for the new SubscriptonModel using ''Scope'' and ''UserId''
    - To account for the old subscription model using ''ProductId'' and ''UserId''
    - Add support to enable ''AllowTracing'' at the subscription level.
* Updated following cmdlets to accept ''ResourceId'' as input
    - ''New-AzApiManagementContext''
        > New-AzApiManagementContext -ResourceId /subscriptions/subid/resourceGroups/rgName/providers/Microsoft.ApiManagement/service/contoso
    - ''Get-AzApiManagementApiRelease''
        > Get-AzApiManagementApiRelease -ResourceId /subscriptions/subid/resourceGroups/rgName/providers/Microsoft.ApiManagement/service/contoso/apis/echo-api/releases/releaseId
    - ''Get-AzApiManagementApiVersionSet''
        > Get-AzApiManagementApiVersionSet -ResourceId /subscriptions/subid/resourceGroups/rgName/providers/Microsoft.ApiManagement/service/constoso/apiversionsets/pathversionset
    - ''Get-AzApiManagementAuthorizationServer''
    - ''Get-AzApiManagementBackend''
        > Get-AzApiManagementBackend -ResourceId /subscriptions/subid/resourceGroups/rgName/providers/Microsoft.ApiManagement/service/contoso/backends/servicefabric
    - ''Get-AzApiManagementCertificate'' 
    - ''Remove-AzApiManagementApiVersionSet''
    - ''Remove-AzApiManagementSubscription'''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

