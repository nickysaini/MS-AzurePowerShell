#
# Module manifest for module 'PSGet_AzureRM'
#
# Generated by: Microsoft Corporation
#
# Generated on: 3/8/2017
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '0.12.0'

# Supported PSEditions
CompatiblePSEditions = 'Core'

# ID used to uniquely identify this module
GUID = 'd48d710e-85cb-46a1-990f-22dae76f6b5f'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = '[PowerShell .Net Core] Azure Resource Manager Module'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'AzureRM.Profile.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'Azure.Storage.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Aks.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.AnalysisServices.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'Azure.AnalysisServices.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.ApiManagement.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.ApplicationInsights.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Automation.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Batch.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Billing.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Cdn.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.CognitiveServices.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Compute.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Consumption.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.ContainerInstance.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.ContainerRegistry.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.DataFactories.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.DataFactoryV2.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.DataLakeAnalytics.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.DataLakeStore.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.DevTestLabs.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Dns.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.EventGrid.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.EventHub.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Insights.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.IotHub.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.KeyVault.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.LogicApp.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.MachineLearning.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.MachineLearningCompute.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.MarketplaceOrdering.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Media.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Network.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.NotificationHubs.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.OperationalInsights.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.PowerBIEmbedded.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.RedisCache.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Relay.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Resources.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Scheduler.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.ServiceBus.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.ServiceFabric.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Sql.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Storage.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.StreamAnalytics.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Tags.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.TrafficManager.Netcore'; ModuleVersion = '0.12.0'; }, 
    @{ModuleName = 'AzureRM.Websites.Netcore'; ModuleVersion = '0.12.0'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
# FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
# AliasesToExport = @()

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
        # Tags = @()

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'Initial Release with all preview AzureRM modules.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
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

