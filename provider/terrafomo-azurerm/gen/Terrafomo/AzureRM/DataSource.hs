-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.AzureRM.DataSource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.AzureRM.DataSource
    (
    -- * DataSource Datatypes
    -- ** azurerm_app_service
      AppServiceData (..)
    , appServiceData

    -- ** azurerm_app_service_plan
    , AppServicePlanData (..)
    , appServicePlanData

    -- ** azurerm_application_security_group
    , ApplicationSecurityGroupData (..)
    , applicationSecurityGroupData

    -- ** azurerm_azuread_application
    , AzureadApplicationData (..)
    , azureadApplicationData

    -- ** azurerm_azuread_service_principal
    , AzureadServicePrincipalData (..)
    , azureadServicePrincipalData

    -- ** azurerm_builtin_role_definition
    , BuiltinRoleDefinitionData (..)
    , builtinRoleDefinitionData

    -- ** azurerm_cdn_profile
    , CdnProfileData (..)
    , cdnProfileData

    -- ** azurerm_client_config
    , ClientConfigData (..)
    , clientConfigData

    -- ** azurerm_container_registry
    , ContainerRegistryData (..)
    , containerRegistryData

    -- ** azurerm_cosmosdb_account
    , CosmosdbAccountData (..)
    , cosmosdbAccountData

    -- ** azurerm_data_lake_store
    , DataLakeStoreData (..)
    , dataLakeStoreData

    -- ** azurerm_dns_zone
    , DnsZoneData (..)
    , dnsZoneData

    -- ** azurerm_eventhub_namespace
    , EventhubNamespaceData (..)
    , eventhubNamespaceData

    -- ** azurerm_image
    , ImageData (..)
    , imageData

    -- ** azurerm_key_vault
    , KeyVaultData (..)
    , keyVaultData

    -- ** azurerm_key_vault_access_policy
    , KeyVaultAccessPolicyData (..)
    , keyVaultAccessPolicyData

    -- ** azurerm_key_vault_secret
    , KeyVaultSecretData (..)
    , keyVaultSecretData

    -- ** azurerm_kubernetes_cluster
    , KubernetesClusterData (..)
    , kubernetesClusterData

    -- ** azurerm_logic_app_workflow
    , LogicAppWorkflowData (..)
    , logicAppWorkflowData

    -- ** azurerm_managed_disk
    , ManagedDiskData (..)
    , managedDiskData

    -- ** azurerm_network_interface
    , NetworkInterfaceData (..)
    , networkInterfaceData

    -- ** azurerm_network_security_group
    , NetworkSecurityGroupData (..)
    , networkSecurityGroupData

    -- ** azurerm_notification_hub
    , NotificationHubData (..)
    , notificationHubData

    -- ** azurerm_notification_hub_namespace
    , NotificationHubNamespaceData (..)
    , notificationHubNamespaceData

    -- ** azurerm_platform_image
    , PlatformImageData (..)
    , platformImageData

    -- ** azurerm_public_ip
    , PublicIpData (..)
    , publicIpData

    -- ** azurerm_public_ips
    , PublicIpsData (..)
    , publicIpsData

    -- ** azurerm_recovery_services_vault
    , RecoveryServicesVaultData (..)
    , recoveryServicesVaultData

    -- ** azurerm_resource_group
    , ResourceGroupData (..)
    , resourceGroupData

    -- ** azurerm_role_definition
    , RoleDefinitionData (..)
    , roleDefinitionData

    -- ** azurerm_route_table
    , RouteTableData (..)
    , routeTableData

    -- ** azurerm_scheduler_job_collection
    , SchedulerJobCollectionData (..)
    , schedulerJobCollectionData

    -- ** azurerm_snapshot
    , SnapshotData (..)
    , snapshotData

    -- ** azurerm_storage_account
    , StorageAccountData (..)
    , storageAccountData

    -- ** azurerm_storage_account_sas
    , StorageAccountSasData (..)
    , storageAccountSasData

    -- ** azurerm_subnet
    , SubnetData (..)
    , subnetData

    -- ** azurerm_subscription
    , SubscriptionData (..)
    , subscriptionData

    -- ** azurerm_subscriptions
    , SubscriptionsData (..)
    , subscriptionsData

    -- ** azurerm_traffic_manager_geographical_location
    , TrafficManagerGeographicalLocationData (..)
    , trafficManagerGeographicalLocationData

    -- ** azurerm_virtual_network
    , VirtualNetworkData (..)
    , virtualNetworkData

    -- ** azurerm_virtual_network_gateway
    , VirtualNetworkGatewayData (..)
    , virtualNetworkGatewayData

    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (($))

import Terrafomo.AzureRM.Settings

import qualified Data.Hashable              as P
import qualified Data.HashMap.Strict        as P
import qualified Data.List.NonEmpty         as P
import qualified Data.Text                  as P
import qualified GHC.Generics               as P
import qualified Lens.Micro                 as P
import qualified Prelude                    as P
import qualified Terrafomo.Attribute        as TF
import qualified Terrafomo.AzureRM.Lens     as P
import qualified Terrafomo.AzureRM.Provider as P
import qualified Terrafomo.AzureRM.Types    as P
import qualified Terrafomo.HCL              as TF
import qualified Terrafomo.Name             as TF
import qualified Terrafomo.Schema           as TF

-- | @azurerm_app_service@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_app_service terraform documentation>
-- for more information.
data AppServiceData s = AppServiceData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (AppServiceData s) where
    toObject AppServiceData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

appServiceData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (AppServiceData s)
appServiceData _name _resourceGroupName =
    TF.newDataSource "azurerm_app_service" $
        AppServiceData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (AppServiceData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: AppServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: AppServiceData s)

instance P.HasResourceGroupName (AppServiceData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: AppServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: AppServiceData s)

instance s ~ s' => P.HasComputedAppServicePlanId (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Text) where
    computedAppServicePlanId x = TF.compute (TF.refKey x) "app_service_plan_id"

instance s ~ s' => P.HasComputedAppSettings (TF.Ref s' (AppServiceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedAppSettings x = TF.compute (TF.refKey x) "app_settings"

instance s ~ s' => P.HasComputedClientAffinityEnabled (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Bool) where
    computedClientAffinityEnabled x = TF.compute (TF.refKey x) "client_affinity_enabled"

instance s ~ s' => P.HasComputedConnectionString (TF.Ref s' (AppServiceData s)) (TF.Attr s [ConnectionString s]) where
    computedConnectionString x = TF.compute (TF.refKey x) "connection_string"

instance s ~ s' => P.HasComputedDefaultSiteHostname (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Text) where
    computedDefaultSiteHostname x = TF.compute (TF.refKey x) "default_site_hostname"

instance s ~ s' => P.HasComputedEnabled (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Bool) where
    computedEnabled x = TF.compute (TF.refKey x) "enabled"

instance s ~ s' => P.HasComputedHttpsOnly (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Bool) where
    computedHttpsOnly x = TF.compute (TF.refKey x) "https_only"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedOutboundIpAddresses (TF.Ref s' (AppServiceData s)) (TF.Attr s P.Text) where
    computedOutboundIpAddresses x = TF.compute (TF.refKey x) "outbound_ip_addresses"

instance s ~ s' => P.HasComputedSiteConfig (TF.Ref s' (AppServiceData s)) (TF.Attr s [SiteConfig s]) where
    computedSiteConfig x = TF.compute (TF.refKey x) "site_config"

instance s ~ s' => P.HasComputedSiteCredential (TF.Ref s' (AppServiceData s)) (TF.Attr s [SiteCredential s]) where
    computedSiteCredential x = TF.compute (TF.refKey x) "site_credential"

instance s ~ s' => P.HasComputedSourceControl (TF.Ref s' (AppServiceData s)) (TF.Attr s [SourceControl s]) where
    computedSourceControl x = TF.compute (TF.refKey x) "source_control"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (AppServiceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_app_service_plan@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_app_service_plan terraform documentation>
-- for more information.
data AppServicePlanData s = AppServicePlanData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (AppServicePlanData s) where
    toObject AppServicePlanData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

appServicePlanData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (AppServicePlanData s)
appServicePlanData _name _resourceGroupName =
    TF.newDataSource "azurerm_app_service_plan" $
        AppServicePlanData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (AppServicePlanData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: AppServicePlanData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: AppServicePlanData s)

instance P.HasResourceGroupName (AppServicePlanData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: AppServicePlanData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: AppServicePlanData s)

instance s ~ s' => P.HasComputedKind (TF.Ref s' (AppServicePlanData s)) (TF.Attr s P.Text) where
    computedKind x = TF.compute (TF.refKey x) "kind"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (AppServicePlanData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedMaximumNumberOfWorkers (TF.Ref s' (AppServicePlanData s)) (TF.Attr s P.Integer) where
    computedMaximumNumberOfWorkers x = TF.compute (TF.refKey x) "maximum_number_of_workers"

instance s ~ s' => P.HasComputedProperties (TF.Ref s' (AppServicePlanData s)) (TF.Attr s [Properties s]) where
    computedProperties x = TF.compute (TF.refKey x) "properties"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (AppServicePlanData s)) (TF.Attr s [Sku s]) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (AppServicePlanData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_application_security_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_application_security_group terraform documentation>
-- for more information.
data ApplicationSecurityGroupData s = ApplicationSecurityGroupData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ApplicationSecurityGroupData s) where
    toObject ApplicationSecurityGroupData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

applicationSecurityGroupData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (ApplicationSecurityGroupData s)
applicationSecurityGroupData _name _resourceGroupName =
    TF.newDataSource "azurerm_application_security_group" $
        ApplicationSecurityGroupData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (ApplicationSecurityGroupData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ApplicationSecurityGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: ApplicationSecurityGroupData s)

instance P.HasResourceGroupName (ApplicationSecurityGroupData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: ApplicationSecurityGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: ApplicationSecurityGroupData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (ApplicationSecurityGroupData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ApplicationSecurityGroupData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_azuread_application@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_azuread_application terraform documentation>
-- for more information.
data AzureadApplicationData s = AzureadApplicationData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (AzureadApplicationData s) where
    toObject _ = []

azureadApplicationData
    :: TF.DataSource P.Provider (AzureadApplicationData s)
azureadApplicationData =
    TF.newDataSource "azurerm_azuread_application" $
        AzureadApplicationData'

instance s ~ s' => P.HasComputedApplicationId (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s P.Text) where
    computedApplicationId x = TF.compute (TF.refKey x) "application_id"

instance s ~ s' => P.HasComputedAvailableToOtherTenants (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s P.Bool) where
    computedAvailableToOtherTenants x = TF.compute (TF.refKey x) "available_to_other_tenants"

instance s ~ s' => P.HasComputedHomepage (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s P.Text) where
    computedHomepage x = TF.compute (TF.refKey x) "homepage"

instance s ~ s' => P.HasComputedIdentifierUris (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIdentifierUris x = TF.compute (TF.refKey x) "identifier_uris"

instance s ~ s' => P.HasComputedName (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedOauth2AllowImplicitFlow (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s P.Bool) where
    computedOauth2AllowImplicitFlow x = TF.compute (TF.refKey x) "oauth2_allow_implicit_flow"

instance s ~ s' => P.HasComputedObjectId (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s P.Text) where
    computedObjectId x = TF.compute (TF.refKey x) "object_id"

instance s ~ s' => P.HasComputedReplyUrls (TF.Ref s' (AzureadApplicationData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedReplyUrls x = TF.compute (TF.refKey x) "reply_urls"

-- | @azurerm_azuread_service_principal@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_azuread_service_principal terraform documentation>
-- for more information.
data AzureadServicePrincipalData s = AzureadServicePrincipalData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (AzureadServicePrincipalData s) where
    toObject _ = []

azureadServicePrincipalData
    :: TF.DataSource P.Provider (AzureadServicePrincipalData s)
azureadServicePrincipalData =
    TF.newDataSource "azurerm_azuread_service_principal" $
        AzureadServicePrincipalData'

instance s ~ s' => P.HasComputedApplicationId (TF.Ref s' (AzureadServicePrincipalData s)) (TF.Attr s P.Text) where
    computedApplicationId x = TF.compute (TF.refKey x) "application_id"

instance s ~ s' => P.HasComputedDisplayName (TF.Ref s' (AzureadServicePrincipalData s)) (TF.Attr s P.Text) where
    computedDisplayName x = TF.compute (TF.refKey x) "display_name"

instance s ~ s' => P.HasComputedObjectId (TF.Ref s' (AzureadServicePrincipalData s)) (TF.Attr s P.Text) where
    computedObjectId x = TF.compute (TF.refKey x) "object_id"

-- | @azurerm_builtin_role_definition@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_builtin_role_definition terraform documentation>
-- for more information.
data BuiltinRoleDefinitionData s = BuiltinRoleDefinitionData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (BuiltinRoleDefinitionData s) where
    toObject BuiltinRoleDefinitionData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

builtinRoleDefinitionData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (BuiltinRoleDefinitionData s)
builtinRoleDefinitionData _name =
    TF.newDataSource "azurerm_builtin_role_definition" $
        BuiltinRoleDefinitionData'
            { _name = _name
            }

instance P.HasName (BuiltinRoleDefinitionData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: BuiltinRoleDefinitionData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: BuiltinRoleDefinitionData s)

instance s ~ s' => P.HasComputedAssignableScopes (TF.Ref s' (BuiltinRoleDefinitionData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAssignableScopes x = TF.compute (TF.refKey x) "assignable_scopes"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (BuiltinRoleDefinitionData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedPermissions (TF.Ref s' (BuiltinRoleDefinitionData s)) (TF.Attr s [Permissions s]) where
    computedPermissions x = TF.compute (TF.refKey x) "permissions"

instance s ~ s' => P.HasComputedType' (TF.Ref s' (BuiltinRoleDefinitionData s)) (TF.Attr s P.Text) where
    computedType' x = TF.compute (TF.refKey x) "type"

-- | @azurerm_cdn_profile@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_cdn_profile terraform documentation>
-- for more information.
data CdnProfileData s = CdnProfileData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (CdnProfileData s) where
    toObject CdnProfileData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

cdnProfileData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (CdnProfileData s)
cdnProfileData _name _resourceGroupName =
    TF.newDataSource "azurerm_cdn_profile" $
        CdnProfileData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (CdnProfileData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CdnProfileData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: CdnProfileData s)

instance P.HasResourceGroupName (CdnProfileData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: CdnProfileData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: CdnProfileData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (CdnProfileData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (CdnProfileData s)) (TF.Attr s P.Text) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (CdnProfileData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_client_config@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_client_config terraform documentation>
-- for more information.
data ClientConfigData s = ClientConfigData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ClientConfigData s) where
    toObject _ = []

clientConfigData
    :: TF.DataSource P.Provider (ClientConfigData s)
clientConfigData =
    TF.newDataSource "azurerm_client_config" $
        ClientConfigData'

instance s ~ s' => P.HasComputedClientId (TF.Ref s' (ClientConfigData s)) (TF.Attr s P.Text) where
    computedClientId x = TF.compute (TF.refKey x) "client_id"

instance s ~ s' => P.HasComputedServicePrincipalApplicationId (TF.Ref s' (ClientConfigData s)) (TF.Attr s P.Text) where
    computedServicePrincipalApplicationId x = TF.compute (TF.refKey x) "service_principal_application_id"

instance s ~ s' => P.HasComputedServicePrincipalObjectId (TF.Ref s' (ClientConfigData s)) (TF.Attr s P.Text) where
    computedServicePrincipalObjectId x = TF.compute (TF.refKey x) "service_principal_object_id"

instance s ~ s' => P.HasComputedSubscriptionId (TF.Ref s' (ClientConfigData s)) (TF.Attr s P.Text) where
    computedSubscriptionId x = TF.compute (TF.refKey x) "subscription_id"

instance s ~ s' => P.HasComputedTenantId (TF.Ref s' (ClientConfigData s)) (TF.Attr s P.Text) where
    computedTenantId x = TF.compute (TF.refKey x) "tenant_id"

-- | @azurerm_container_registry@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_container_registry terraform documentation>
-- for more information.
data ContainerRegistryData s = ContainerRegistryData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ContainerRegistryData s) where
    toObject ContainerRegistryData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

containerRegistryData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (ContainerRegistryData s)
containerRegistryData _name _resourceGroupName =
    TF.newDataSource "azurerm_container_registry" $
        ContainerRegistryData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (ContainerRegistryData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ContainerRegistryData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: ContainerRegistryData s)

instance P.HasResourceGroupName (ContainerRegistryData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: ContainerRegistryData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: ContainerRegistryData s)

instance s ~ s' => P.HasComputedAdminEnabled (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Bool) where
    computedAdminEnabled x = TF.compute (TF.refKey x) "admin_enabled"

instance s ~ s' => P.HasComputedAdminPassword (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Text) where
    computedAdminPassword x = TF.compute (TF.refKey x) "admin_password"

instance s ~ s' => P.HasComputedAdminUsername (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Text) where
    computedAdminUsername x = TF.compute (TF.refKey x) "admin_username"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedLoginServer (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Text) where
    computedLoginServer x = TF.compute (TF.refKey x) "login_server"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Text) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedStorageAccountId (TF.Ref s' (ContainerRegistryData s)) (TF.Attr s P.Text) where
    computedStorageAccountId x = TF.compute (TF.refKey x) "storage_account_id"

-- | @azurerm_cosmosdb_account@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_cosmosdb_account terraform documentation>
-- for more information.
data CosmosdbAccountData s = CosmosdbAccountData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (CosmosdbAccountData s) where
    toObject CosmosdbAccountData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

cosmosdbAccountData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (CosmosdbAccountData s)
cosmosdbAccountData _name _resourceGroupName =
    TF.newDataSource "azurerm_cosmosdb_account" $
        CosmosdbAccountData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (CosmosdbAccountData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CosmosdbAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: CosmosdbAccountData s)

instance P.HasResourceGroupName (CosmosdbAccountData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: CosmosdbAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: CosmosdbAccountData s)

instance s ~ s' => P.HasComputedCapabilities (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s [Capabilities s]) where
    computedCapabilities x = TF.compute (TF.refKey x) "capabilities"

instance s ~ s' => P.HasComputedConsistencyPolicy (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s [ConsistencyPolicy s]) where
    computedConsistencyPolicy x = TF.compute (TF.refKey x) "consistency_policy"

instance s ~ s' => P.HasComputedEnableAutomaticFailover (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Bool) where
    computedEnableAutomaticFailover x = TF.compute (TF.refKey x) "enable_automatic_failover"

instance s ~ s' => P.HasComputedEndpoint (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedEndpoint x = TF.compute (TF.refKey x) "endpoint"

instance s ~ s' => P.HasComputedGeoLocation (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s [GeoLocation s]) where
    computedGeoLocation x = TF.compute (TF.refKey x) "geo_location"

instance s ~ s' => P.HasComputedIpRangeFilter (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedIpRangeFilter x = TF.compute (TF.refKey x) "ip_range_filter"

instance s ~ s' => P.HasComputedKind (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedKind x = TF.compute (TF.refKey x) "kind"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedOfferType (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedOfferType x = TF.compute (TF.refKey x) "offer_type"

instance s ~ s' => P.HasComputedPrimaryMasterKey (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryMasterKey x = TF.compute (TF.refKey x) "primary_master_key"

instance s ~ s' => P.HasComputedPrimaryReadonlyMasterKey (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryReadonlyMasterKey x = TF.compute (TF.refKey x) "primary_readonly_master_key"

instance s ~ s' => P.HasComputedReadEndpoints (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedReadEndpoints x = TF.compute (TF.refKey x) "read_endpoints"

instance s ~ s' => P.HasComputedSecondaryMasterKey (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryMasterKey x = TF.compute (TF.refKey x) "secondary_master_key"

instance s ~ s' => P.HasComputedSecondaryReadonlyMasterKey (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryReadonlyMasterKey x = TF.compute (TF.refKey x) "secondary_readonly_master_key"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedWriteEndpoints (TF.Ref s' (CosmosdbAccountData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedWriteEndpoints x = TF.compute (TF.refKey x) "write_endpoints"

-- | @azurerm_data_lake_store@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_data_lake_store terraform documentation>
-- for more information.
data DataLakeStoreData s = DataLakeStoreData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (DataLakeStoreData s) where
    toObject DataLakeStoreData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

dataLakeStoreData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (DataLakeStoreData s)
dataLakeStoreData _name _resourceGroupName =
    TF.newDataSource "azurerm_data_lake_store" $
        DataLakeStoreData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (DataLakeStoreData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: DataLakeStoreData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: DataLakeStoreData s)

instance P.HasResourceGroupName (DataLakeStoreData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: DataLakeStoreData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: DataLakeStoreData s)

instance s ~ s' => P.HasComputedEncryptionState (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s P.Text) where
    computedEncryptionState x = TF.compute (TF.refKey x) "encryption_state"

instance s ~ s' => P.HasComputedEncryptionType (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s P.Text) where
    computedEncryptionType x = TF.compute (TF.refKey x) "encryption_type"

instance s ~ s' => P.HasComputedFirewallAllowAzureIps (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s P.Text) where
    computedFirewallAllowAzureIps x = TF.compute (TF.refKey x) "firewall_allow_azure_ips"

instance s ~ s' => P.HasComputedFirewallState (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s P.Text) where
    computedFirewallState x = TF.compute (TF.refKey x) "firewall_state"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedTier (TF.Ref s' (DataLakeStoreData s)) (TF.Attr s P.Text) where
    computedTier x = TF.compute (TF.refKey x) "tier"

-- | @azurerm_dns_zone@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_dns_zone terraform documentation>
-- for more information.
data DnsZoneData s = DnsZoneData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (DnsZoneData s) where
    toObject DnsZoneData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

dnsZoneData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (DnsZoneData s)
dnsZoneData _name =
    TF.newDataSource "azurerm_dns_zone" $
        DnsZoneData'
            { _name = _name
            }

instance P.HasName (DnsZoneData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: DnsZoneData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: DnsZoneData s)

instance s ~ s' => P.HasComputedMaxNumberOfRecordSets (TF.Ref s' (DnsZoneData s)) (TF.Attr s P.Text) where
    computedMaxNumberOfRecordSets x = TF.compute (TF.refKey x) "max_number_of_record_sets"

instance s ~ s' => P.HasComputedNameServers (TF.Ref s' (DnsZoneData s)) (TF.Attr s [TF.Attr s (TF.Attr s P.Text)]) where
    computedNameServers x = TF.compute (TF.refKey x) "name_servers"

instance s ~ s' => P.HasComputedNumberOfRecordSets (TF.Ref s' (DnsZoneData s)) (TF.Attr s P.Text) where
    computedNumberOfRecordSets x = TF.compute (TF.refKey x) "number_of_record_sets"

instance s ~ s' => P.HasComputedRegistrationVirtualNetworkIds (TF.Ref s' (DnsZoneData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedRegistrationVirtualNetworkIds x = TF.compute (TF.refKey x) "registration_virtual_network_ids"

instance s ~ s' => P.HasComputedResolutionVirtualNetworkIds (TF.Ref s' (DnsZoneData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedResolutionVirtualNetworkIds x = TF.compute (TF.refKey x) "resolution_virtual_network_ids"

instance s ~ s' => P.HasComputedResourceGroupName (TF.Ref s' (DnsZoneData s)) (TF.Attr s P.Text) where
    computedResourceGroupName x = TF.compute (TF.refKey x) "resource_group_name"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (DnsZoneData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedZoneType (TF.Ref s' (DnsZoneData s)) (TF.Attr s P.Text) where
    computedZoneType x = TF.compute (TF.refKey x) "zone_type"

-- | @azurerm_eventhub_namespace@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_eventhub_namespace terraform documentation>
-- for more information.
data EventhubNamespaceData s = EventhubNamespaceData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (EventhubNamespaceData s) where
    toObject EventhubNamespaceData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

eventhubNamespaceData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (EventhubNamespaceData s)
eventhubNamespaceData _name _resourceGroupName =
    TF.newDataSource "azurerm_eventhub_namespace" $
        EventhubNamespaceData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (EventhubNamespaceData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: EventhubNamespaceData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: EventhubNamespaceData s)

instance P.HasResourceGroupName (EventhubNamespaceData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: EventhubNamespaceData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: EventhubNamespaceData s)

instance s ~ s' => P.HasComputedAutoInflateEnabled (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Bool) where
    computedAutoInflateEnabled x = TF.compute (TF.refKey x) "auto_inflate_enabled"

instance s ~ s' => P.HasComputedCapacity (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Integer) where
    computedCapacity x = TF.compute (TF.refKey x) "capacity"

instance s ~ s' => P.HasComputedDefaultPrimaryConnectionString (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Text) where
    computedDefaultPrimaryConnectionString x = TF.compute (TF.refKey x) "default_primary_connection_string"

instance s ~ s' => P.HasComputedDefaultPrimaryKey (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Text) where
    computedDefaultPrimaryKey x = TF.compute (TF.refKey x) "default_primary_key"

instance s ~ s' => P.HasComputedDefaultSecondaryConnectionString (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Text) where
    computedDefaultSecondaryConnectionString x = TF.compute (TF.refKey x) "default_secondary_connection_string"

instance s ~ s' => P.HasComputedDefaultSecondaryKey (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Text) where
    computedDefaultSecondaryKey x = TF.compute (TF.refKey x) "default_secondary_key"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedMaximumThroughputUnits (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Integer) where
    computedMaximumThroughputUnits x = TF.compute (TF.refKey x) "maximum_throughput_units"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s P.Text) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (EventhubNamespaceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_image@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_image terraform documentation>
-- for more information.
data ImageData s = ImageData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Optional)
    --
    -- Conflicts with:
    --
    -- * 'nameRegex'
    , _nameRegex         :: TF.Attr s P.Text
    -- ^ @name_regex@ - (Optional)
    --
    -- Conflicts with:
    --
    -- * 'name'
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    , _sortDescending    :: TF.Attr s P.Bool
    -- ^ @sort_descending@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ImageData s) where
    toObject ImageData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "name_regex" <$> TF.attribute _nameRegex
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        , TF.assign "sort_descending" <$> TF.attribute _sortDescending
        ]

imageData
    :: TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (ImageData s)
imageData _resourceGroupName =
    TF.newDataSource "azurerm_image" $
        ImageData'
            { _name = TF.Nil
            , _nameRegex = TF.Nil
            , _resourceGroupName = _resourceGroupName
            , _sortDescending = TF.value P.False
            }

instance P.HasName (ImageData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ImageData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          , _nameRegex = TF.Nil
                          } :: ImageData s)

instance P.HasNameRegex (ImageData s) (TF.Attr s P.Text) where
    nameRegex =
        P.lens (_nameRegex :: ImageData s -> TF.Attr s P.Text)
               (\s a -> s { _nameRegex = a
                          , _name = TF.Nil
                          } :: ImageData s)

instance P.HasResourceGroupName (ImageData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: ImageData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: ImageData s)

instance P.HasSortDescending (ImageData s) (TF.Attr s P.Bool) where
    sortDescending =
        P.lens (_sortDescending :: ImageData s -> TF.Attr s P.Bool)
               (\s a -> s { _sortDescending = a
                          } :: ImageData s)

instance s ~ s' => P.HasComputedDataDisk (TF.Ref s' (ImageData s)) (TF.Attr s [DataDisk s]) where
    computedDataDisk x = TF.compute (TF.refKey x) "data_disk"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (ImageData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedOsDisk (TF.Ref s' (ImageData s)) (TF.Attr s [OsDisk s]) where
    computedOsDisk x = TF.compute (TF.refKey x) "os_disk"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ImageData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_key_vault@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_key_vault terraform documentation>
-- for more information.
data KeyVaultData s = KeyVaultData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (KeyVaultData s) where
    toObject KeyVaultData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

keyVaultData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (KeyVaultData s)
keyVaultData _name _resourceGroupName =
    TF.newDataSource "azurerm_key_vault" $
        KeyVaultData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (KeyVaultData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KeyVaultData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: KeyVaultData s)

instance P.HasResourceGroupName (KeyVaultData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: KeyVaultData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: KeyVaultData s)

instance s ~ s' => P.HasComputedAccessPolicy (TF.Ref s' (KeyVaultData s)) (TF.Attr s [AccessPolicy s]) where
    computedAccessPolicy x = TF.compute (TF.refKey x) "access_policy"

instance s ~ s' => P.HasComputedEnabledForDeployment (TF.Ref s' (KeyVaultData s)) (TF.Attr s P.Bool) where
    computedEnabledForDeployment x = TF.compute (TF.refKey x) "enabled_for_deployment"

instance s ~ s' => P.HasComputedEnabledForDiskEncryption (TF.Ref s' (KeyVaultData s)) (TF.Attr s P.Bool) where
    computedEnabledForDiskEncryption x = TF.compute (TF.refKey x) "enabled_for_disk_encryption"

instance s ~ s' => P.HasComputedEnabledForTemplateDeployment (TF.Ref s' (KeyVaultData s)) (TF.Attr s P.Bool) where
    computedEnabledForTemplateDeployment x = TF.compute (TF.refKey x) "enabled_for_template_deployment"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (KeyVaultData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (KeyVaultData s)) (TF.Attr s [Sku s]) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (KeyVaultData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedTenantId (TF.Ref s' (KeyVaultData s)) (TF.Attr s P.Text) where
    computedTenantId x = TF.compute (TF.refKey x) "tenant_id"

instance s ~ s' => P.HasComputedVaultUri (TF.Ref s' (KeyVaultData s)) (TF.Attr s P.Text) where
    computedVaultUri x = TF.compute (TF.refKey x) "vault_uri"

-- | @azurerm_key_vault_access_policy@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_key_vault_access_policy terraform documentation>
-- for more information.
data KeyVaultAccessPolicyData s = KeyVaultAccessPolicyData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (KeyVaultAccessPolicyData s) where
    toObject KeyVaultAccessPolicyData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

keyVaultAccessPolicyData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (KeyVaultAccessPolicyData s)
keyVaultAccessPolicyData _name =
    TF.newDataSource "azurerm_key_vault_access_policy" $
        KeyVaultAccessPolicyData'
            { _name = _name
            }

instance P.HasName (KeyVaultAccessPolicyData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KeyVaultAccessPolicyData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: KeyVaultAccessPolicyData s)

instance s ~ s' => P.HasComputedCertificatePermissions (TF.Ref s' (KeyVaultAccessPolicyData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedCertificatePermissions x = TF.compute (TF.refKey x) "certificate_permissions"

instance s ~ s' => P.HasComputedKeyPermissions (TF.Ref s' (KeyVaultAccessPolicyData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedKeyPermissions x = TF.compute (TF.refKey x) "key_permissions"

instance s ~ s' => P.HasComputedSecretPermissions (TF.Ref s' (KeyVaultAccessPolicyData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecretPermissions x = TF.compute (TF.refKey x) "secret_permissions"

-- | @azurerm_key_vault_secret@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_key_vault_secret terraform documentation>
-- for more information.
data KeyVaultSecretData s = KeyVaultSecretData'
    { _name     :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _vaultUri :: TF.Attr s P.Text
    -- ^ @vault_uri@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (KeyVaultSecretData s) where
    toObject KeyVaultSecretData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "vault_uri" <$> TF.attribute _vaultUri
        ]

keyVaultSecretData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @vault_uri@ - 'P.vaultUri'
    -> TF.DataSource P.Provider (KeyVaultSecretData s)
keyVaultSecretData _name _vaultUri =
    TF.newDataSource "azurerm_key_vault_secret" $
        KeyVaultSecretData'
            { _name = _name
            , _vaultUri = _vaultUri
            }

instance P.HasName (KeyVaultSecretData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KeyVaultSecretData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: KeyVaultSecretData s)

instance P.HasVaultUri (KeyVaultSecretData s) (TF.Attr s P.Text) where
    vaultUri =
        P.lens (_vaultUri :: KeyVaultSecretData s -> TF.Attr s P.Text)
               (\s a -> s { _vaultUri = a
                          } :: KeyVaultSecretData s)

instance s ~ s' => P.HasComputedContentType (TF.Ref s' (KeyVaultSecretData s)) (TF.Attr s P.Text) where
    computedContentType x = TF.compute (TF.refKey x) "content_type"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (KeyVaultSecretData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedValue (TF.Ref s' (KeyVaultSecretData s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "value"

instance s ~ s' => P.HasComputedVersion (TF.Ref s' (KeyVaultSecretData s)) (TF.Attr s P.Text) where
    computedVersion x = TF.compute (TF.refKey x) "version"

-- | @azurerm_kubernetes_cluster@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_kubernetes_cluster terraform documentation>
-- for more information.
data KubernetesClusterData s = KubernetesClusterData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (KubernetesClusterData s) where
    toObject KubernetesClusterData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

kubernetesClusterData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (KubernetesClusterData s)
kubernetesClusterData _name _resourceGroupName =
    TF.newDataSource "azurerm_kubernetes_cluster" $
        KubernetesClusterData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (KubernetesClusterData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KubernetesClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: KubernetesClusterData s)

instance P.HasResourceGroupName (KubernetesClusterData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: KubernetesClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: KubernetesClusterData s)

instance s ~ s' => P.HasComputedAgentPoolProfile (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s [AgentPoolProfile s]) where
    computedAgentPoolProfile x = TF.compute (TF.refKey x) "agent_pool_profile"

instance s ~ s' => P.HasComputedDnsPrefix (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s P.Text) where
    computedDnsPrefix x = TF.compute (TF.refKey x) "dns_prefix"

instance s ~ s' => P.HasComputedFqdn (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s P.Text) where
    computedFqdn x = TF.compute (TF.refKey x) "fqdn"

instance s ~ s' => P.HasComputedKubeConfig (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s [KubeConfig s]) where
    computedKubeConfig x = TF.compute (TF.refKey x) "kube_config"

instance s ~ s' => P.HasComputedKubeConfigRaw (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s P.Text) where
    computedKubeConfigRaw x = TF.compute (TF.refKey x) "kube_config_raw"

instance s ~ s' => P.HasComputedKubernetesVersion (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s P.Text) where
    computedKubernetesVersion x = TF.compute (TF.refKey x) "kubernetes_version"

instance s ~ s' => P.HasComputedLinuxProfile (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s [LinuxProfile s]) where
    computedLinuxProfile x = TF.compute (TF.refKey x) "linux_profile"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedNetworkProfile (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s [NetworkProfile s]) where
    computedNetworkProfile x = TF.compute (TF.refKey x) "network_profile"

instance s ~ s' => P.HasComputedNodeResourceGroup (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s P.Text) where
    computedNodeResourceGroup x = TF.compute (TF.refKey x) "node_resource_group"

instance s ~ s' => P.HasComputedServicePrincipal (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s [ServicePrincipal s]) where
    computedServicePrincipal x = TF.compute (TF.refKey x) "service_principal"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (KubernetesClusterData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_logic_app_workflow@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_logic_app_workflow terraform documentation>
-- for more information.
data LogicAppWorkflowData s = LogicAppWorkflowData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (LogicAppWorkflowData s) where
    toObject LogicAppWorkflowData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

logicAppWorkflowData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (LogicAppWorkflowData s)
logicAppWorkflowData _name _resourceGroupName =
    TF.newDataSource "azurerm_logic_app_workflow" $
        LogicAppWorkflowData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (LogicAppWorkflowData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: LogicAppWorkflowData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: LogicAppWorkflowData s)

instance P.HasResourceGroupName (LogicAppWorkflowData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: LogicAppWorkflowData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: LogicAppWorkflowData s)

instance s ~ s' => P.HasComputedAccessEndpoint (TF.Ref s' (LogicAppWorkflowData s)) (TF.Attr s P.Text) where
    computedAccessEndpoint x = TF.compute (TF.refKey x) "access_endpoint"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (LogicAppWorkflowData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedParameters (TF.Ref s' (LogicAppWorkflowData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedParameters x = TF.compute (TF.refKey x) "parameters"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (LogicAppWorkflowData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedWorkflowSchema (TF.Ref s' (LogicAppWorkflowData s)) (TF.Attr s P.Text) where
    computedWorkflowSchema x = TF.compute (TF.refKey x) "workflow_schema"

instance s ~ s' => P.HasComputedWorkflowVersion (TF.Ref s' (LogicAppWorkflowData s)) (TF.Attr s P.Text) where
    computedWorkflowVersion x = TF.compute (TF.refKey x) "workflow_version"

-- | @azurerm_managed_disk@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_managed_disk terraform documentation>
-- for more information.
data ManagedDiskData s = ManagedDiskData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ManagedDiskData s) where
    toObject ManagedDiskData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

managedDiskData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (ManagedDiskData s)
managedDiskData _name _resourceGroupName =
    TF.newDataSource "azurerm_managed_disk" $
        ManagedDiskData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (ManagedDiskData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ManagedDiskData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: ManagedDiskData s)

instance P.HasResourceGroupName (ManagedDiskData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: ManagedDiskData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: ManagedDiskData s)

instance s ~ s' => P.HasComputedDiskSizeGb (TF.Ref s' (ManagedDiskData s)) (TF.Attr s P.Integer) where
    computedDiskSizeGb x = TF.compute (TF.refKey x) "disk_size_gb"

instance s ~ s' => P.HasComputedOsType (TF.Ref s' (ManagedDiskData s)) (TF.Attr s P.Text) where
    computedOsType x = TF.compute (TF.refKey x) "os_type"

instance s ~ s' => P.HasComputedSourceResourceId (TF.Ref s' (ManagedDiskData s)) (TF.Attr s P.Text) where
    computedSourceResourceId x = TF.compute (TF.refKey x) "source_resource_id"

instance s ~ s' => P.HasComputedSourceUri (TF.Ref s' (ManagedDiskData s)) (TF.Attr s P.Text) where
    computedSourceUri x = TF.compute (TF.refKey x) "source_uri"

instance s ~ s' => P.HasComputedStorageAccountType (TF.Ref s' (ManagedDiskData s)) (TF.Attr s P.Text) where
    computedStorageAccountType x = TF.compute (TF.refKey x) "storage_account_type"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ManagedDiskData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedZones (TF.Ref s' (ManagedDiskData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedZones x = TF.compute (TF.refKey x) "zones"

-- | @azurerm_network_interface@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_network_interface terraform documentation>
-- for more information.
data NetworkInterfaceData s = NetworkInterfaceData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (NetworkInterfaceData s) where
    toObject NetworkInterfaceData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

networkInterfaceData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (NetworkInterfaceData s)
networkInterfaceData _name _resourceGroupName =
    TF.newDataSource "azurerm_network_interface" $
        NetworkInterfaceData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (NetworkInterfaceData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: NetworkInterfaceData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: NetworkInterfaceData s)

instance P.HasResourceGroupName (NetworkInterfaceData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: NetworkInterfaceData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: NetworkInterfaceData s)

instance s ~ s' => P.HasComputedAppliedDnsServers (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s (TF.Attr s P.Text)]) where
    computedAppliedDnsServers x = TF.compute (TF.refKey x) "applied_dns_servers"

instance s ~ s' => P.HasComputedDnsServers (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s (TF.Attr s P.Text)]) where
    computedDnsServers x = TF.compute (TF.refKey x) "dns_servers"

instance s ~ s' => P.HasComputedEnableAcceleratedNetworking (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Bool) where
    computedEnableAcceleratedNetworking x = TF.compute (TF.refKey x) "enable_accelerated_networking"

instance s ~ s' => P.HasComputedEnableIpForwarding (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Bool) where
    computedEnableIpForwarding x = TF.compute (TF.refKey x) "enable_ip_forwarding"

instance s ~ s' => P.HasComputedInternalDnsNameLabel (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedInternalDnsNameLabel x = TF.compute (TF.refKey x) "internal_dns_name_label"

instance s ~ s' => P.HasComputedInternalFqdn (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedInternalFqdn x = TF.compute (TF.refKey x) "internal_fqdn"

instance s ~ s' => P.HasComputedIpConfiguration (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [IpConfiguration s]) where
    computedIpConfiguration x = TF.compute (TF.refKey x) "ip_configuration"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedMacAddress (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedMacAddress x = TF.compute (TF.refKey x) "mac_address"

instance s ~ s' => P.HasComputedNetworkSecurityGroupId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedNetworkSecurityGroupId x = TF.compute (TF.refKey x) "network_security_group_id"

instance s ~ s' => P.HasComputedPrivateIpAddress (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedPrivateIpAddress x = TF.compute (TF.refKey x) "private_ip_address"

instance s ~ s' => P.HasComputedPrivateIpAddresses (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedPrivateIpAddresses x = TF.compute (TF.refKey x) "private_ip_addresses"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVirtualMachineId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedVirtualMachineId x = TF.compute (TF.refKey x) "virtual_machine_id"

-- | @azurerm_network_security_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_network_security_group terraform documentation>
-- for more information.
data NetworkSecurityGroupData s = NetworkSecurityGroupData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (NetworkSecurityGroupData s) where
    toObject NetworkSecurityGroupData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

networkSecurityGroupData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (NetworkSecurityGroupData s)
networkSecurityGroupData _name _resourceGroupName =
    TF.newDataSource "azurerm_network_security_group" $
        NetworkSecurityGroupData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (NetworkSecurityGroupData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: NetworkSecurityGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: NetworkSecurityGroupData s)

instance P.HasResourceGroupName (NetworkSecurityGroupData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: NetworkSecurityGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: NetworkSecurityGroupData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (NetworkSecurityGroupData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedSecurityRule (TF.Ref s' (NetworkSecurityGroupData s)) (TF.Attr s [SecurityRule s]) where
    computedSecurityRule x = TF.compute (TF.refKey x) "security_rule"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (NetworkSecurityGroupData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_notification_hub@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_notification_hub terraform documentation>
-- for more information.
data NotificationHubData s = NotificationHubData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _namespaceName     :: TF.Attr s P.Text
    -- ^ @namespace_name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (NotificationHubData s) where
    toObject NotificationHubData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "namespace_name" <$> TF.attribute _namespaceName
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

notificationHubData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @namespace_name@ - 'P.namespaceName'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (NotificationHubData s)
notificationHubData _name _namespaceName _resourceGroupName =
    TF.newDataSource "azurerm_notification_hub" $
        NotificationHubData'
            { _name = _name
            , _namespaceName = _namespaceName
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (NotificationHubData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: NotificationHubData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: NotificationHubData s)

instance P.HasNamespaceName (NotificationHubData s) (TF.Attr s P.Text) where
    namespaceName =
        P.lens (_namespaceName :: NotificationHubData s -> TF.Attr s P.Text)
               (\s a -> s { _namespaceName = a
                          } :: NotificationHubData s)

instance P.HasResourceGroupName (NotificationHubData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: NotificationHubData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: NotificationHubData s)

instance s ~ s' => P.HasComputedApnsCredential (TF.Ref s' (NotificationHubData s)) (TF.Attr s [ApnsCredential s]) where
    computedApnsCredential x = TF.compute (TF.refKey x) "apns_credential"

instance s ~ s' => P.HasComputedGcmCredential (TF.Ref s' (NotificationHubData s)) (TF.Attr s [GcmCredential s]) where
    computedGcmCredential x = TF.compute (TF.refKey x) "gcm_credential"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (NotificationHubData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

-- | @azurerm_notification_hub_namespace@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_notification_hub_namespace terraform documentation>
-- for more information.
data NotificationHubNamespaceData s = NotificationHubNamespaceData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (NotificationHubNamespaceData s) where
    toObject NotificationHubNamespaceData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

notificationHubNamespaceData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (NotificationHubNamespaceData s)
notificationHubNamespaceData _name _resourceGroupName =
    TF.newDataSource "azurerm_notification_hub_namespace" $
        NotificationHubNamespaceData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (NotificationHubNamespaceData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: NotificationHubNamespaceData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: NotificationHubNamespaceData s)

instance P.HasResourceGroupName (NotificationHubNamespaceData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: NotificationHubNamespaceData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: NotificationHubNamespaceData s)

instance s ~ s' => P.HasComputedEnabled (TF.Ref s' (NotificationHubNamespaceData s)) (TF.Attr s P.Bool) where
    computedEnabled x = TF.compute (TF.refKey x) "enabled"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (NotificationHubNamespaceData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedNamespaceType (TF.Ref s' (NotificationHubNamespaceData s)) (TF.Attr s P.Text) where
    computedNamespaceType x = TF.compute (TF.refKey x) "namespace_type"

instance s ~ s' => P.HasComputedServicebusEndpoint (TF.Ref s' (NotificationHubNamespaceData s)) (TF.Attr s P.Text) where
    computedServicebusEndpoint x = TF.compute (TF.refKey x) "servicebus_endpoint"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (NotificationHubNamespaceData s)) (TF.Attr s [Sku s]) where
    computedSku x = TF.compute (TF.refKey x) "sku"

-- | @azurerm_platform_image@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_platform_image terraform documentation>
-- for more information.
data PlatformImageData s = PlatformImageData'
    { _location  :: TF.Attr s P.Text
    -- ^ @location@ - (Required)
    --
    , _offer     :: TF.Attr s P.Text
    -- ^ @offer@ - (Required)
    --
    , _publisher :: TF.Attr s P.Text
    -- ^ @publisher@ - (Required)
    --
    , _sku       :: TF.Attr s P.Text
    -- ^ @sku@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (PlatformImageData s) where
    toObject PlatformImageData'{..} = catMaybes
        [ TF.assign "location" <$> TF.attribute _location
        , TF.assign "offer" <$> TF.attribute _offer
        , TF.assign "publisher" <$> TF.attribute _publisher
        , TF.assign "sku" <$> TF.attribute _sku
        ]

platformImageData
    :: TF.Attr s P.Text -- ^ @location@ - 'P.location'
    -> TF.Attr s P.Text -- ^ @offer@ - 'P.offer'
    -> TF.Attr s P.Text -- ^ @publisher@ - 'P.publisher'
    -> TF.Attr s P.Text -- ^ @sku@ - 'P.sku'
    -> TF.DataSource P.Provider (PlatformImageData s)
platformImageData _location _offer _publisher _sku =
    TF.newDataSource "azurerm_platform_image" $
        PlatformImageData'
            { _location = _location
            , _offer = _offer
            , _publisher = _publisher
            , _sku = _sku
            }

instance P.HasLocation (PlatformImageData s) (TF.Attr s P.Text) where
    location =
        P.lens (_location :: PlatformImageData s -> TF.Attr s P.Text)
               (\s a -> s { _location = a
                          } :: PlatformImageData s)

instance P.HasOffer (PlatformImageData s) (TF.Attr s P.Text) where
    offer =
        P.lens (_offer :: PlatformImageData s -> TF.Attr s P.Text)
               (\s a -> s { _offer = a
                          } :: PlatformImageData s)

instance P.HasPublisher (PlatformImageData s) (TF.Attr s P.Text) where
    publisher =
        P.lens (_publisher :: PlatformImageData s -> TF.Attr s P.Text)
               (\s a -> s { _publisher = a
                          } :: PlatformImageData s)

instance P.HasSku (PlatformImageData s) (TF.Attr s P.Text) where
    sku =
        P.lens (_sku :: PlatformImageData s -> TF.Attr s P.Text)
               (\s a -> s { _sku = a
                          } :: PlatformImageData s)

instance s ~ s' => P.HasComputedVersion (TF.Ref s' (PlatformImageData s)) (TF.Attr s P.Text) where
    computedVersion x = TF.compute (TF.refKey x) "version"

-- | @azurerm_public_ip@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_public_ip terraform documentation>
-- for more information.
data PublicIpData s = PublicIpData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (PublicIpData s) where
    toObject PublicIpData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

publicIpData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (PublicIpData s)
publicIpData _name _resourceGroupName =
    TF.newDataSource "azurerm_public_ip" $
        PublicIpData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (PublicIpData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: PublicIpData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: PublicIpData s)

instance P.HasResourceGroupName (PublicIpData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: PublicIpData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: PublicIpData s)

instance s ~ s' => P.HasComputedDomainNameLabel (TF.Ref s' (PublicIpData s)) (TF.Attr s P.Text) where
    computedDomainNameLabel x = TF.compute (TF.refKey x) "domain_name_label"

instance s ~ s' => P.HasComputedFqdn (TF.Ref s' (PublicIpData s)) (TF.Attr s P.Text) where
    computedFqdn x = TF.compute (TF.refKey x) "fqdn"

instance s ~ s' => P.HasComputedIdleTimeoutInMinutes (TF.Ref s' (PublicIpData s)) (TF.Attr s P.Integer) where
    computedIdleTimeoutInMinutes x = TF.compute (TF.refKey x) "idle_timeout_in_minutes"

instance s ~ s' => P.HasComputedIpAddress (TF.Ref s' (PublicIpData s)) (TF.Attr s P.Text) where
    computedIpAddress x = TF.compute (TF.refKey x) "ip_address"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (PublicIpData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_public_ips@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_public_ips terraform documentation>
-- for more information.
data PublicIpsData s = PublicIpsData'
    { _allocationType    :: TF.Attr s P.Text
    -- ^ @allocation_type@ - (Optional)
    --
    , _attached          :: TF.Attr s P.Bool
    -- ^ @attached@ - (Optional)
    --
    , _namePrefix        :: TF.Attr s P.Text
    -- ^ @name_prefix@ - (Optional)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (PublicIpsData s) where
    toObject PublicIpsData'{..} = catMaybes
        [ TF.assign "allocation_type" <$> TF.attribute _allocationType
        , TF.assign "attached" <$> TF.attribute _attached
        , TF.assign "name_prefix" <$> TF.attribute _namePrefix
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

publicIpsData
    :: TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (PublicIpsData s)
publicIpsData _resourceGroupName =
    TF.newDataSource "azurerm_public_ips" $
        PublicIpsData'
            { _allocationType = TF.Nil
            , _attached = TF.Nil
            , _namePrefix = TF.Nil
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasAllocationType (PublicIpsData s) (TF.Attr s P.Text) where
    allocationType =
        P.lens (_allocationType :: PublicIpsData s -> TF.Attr s P.Text)
               (\s a -> s { _allocationType = a
                          } :: PublicIpsData s)

instance P.HasAttached (PublicIpsData s) (TF.Attr s P.Bool) where
    attached =
        P.lens (_attached :: PublicIpsData s -> TF.Attr s P.Bool)
               (\s a -> s { _attached = a
                          } :: PublicIpsData s)

instance P.HasNamePrefix (PublicIpsData s) (TF.Attr s P.Text) where
    namePrefix =
        P.lens (_namePrefix :: PublicIpsData s -> TF.Attr s P.Text)
               (\s a -> s { _namePrefix = a
                          } :: PublicIpsData s)

instance P.HasResourceGroupName (PublicIpsData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: PublicIpsData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: PublicIpsData s)

instance s ~ s' => P.HasComputedPublicIps (TF.Ref s' (PublicIpsData s)) (TF.Attr s [PublicIps s]) where
    computedPublicIps x = TF.compute (TF.refKey x) "public_ips"

-- | @azurerm_recovery_services_vault@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_recovery_services_vault terraform documentation>
-- for more information.
data RecoveryServicesVaultData s = RecoveryServicesVaultData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (RecoveryServicesVaultData s) where
    toObject RecoveryServicesVaultData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

recoveryServicesVaultData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (RecoveryServicesVaultData s)
recoveryServicesVaultData _name _resourceGroupName =
    TF.newDataSource "azurerm_recovery_services_vault" $
        RecoveryServicesVaultData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (RecoveryServicesVaultData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: RecoveryServicesVaultData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: RecoveryServicesVaultData s)

instance P.HasResourceGroupName (RecoveryServicesVaultData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: RecoveryServicesVaultData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: RecoveryServicesVaultData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (RecoveryServicesVaultData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (RecoveryServicesVaultData s)) (TF.Attr s P.Text) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (RecoveryServicesVaultData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_resource_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_resource_group terraform documentation>
-- for more information.
data ResourceGroupData s = ResourceGroupData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ResourceGroupData s) where
    toObject ResourceGroupData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

resourceGroupData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (ResourceGroupData s)
resourceGroupData _name =
    TF.newDataSource "azurerm_resource_group" $
        ResourceGroupData'
            { _name = _name
            }

instance P.HasName (ResourceGroupData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ResourceGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: ResourceGroupData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (ResourceGroupData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ResourceGroupData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_role_definition@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_role_definition terraform documentation>
-- for more information.
data RoleDefinitionData s = RoleDefinitionData'
    { _roleDefinitionId :: TF.Attr s P.Text
    -- ^ @role_definition_id@ - (Required)
    --
    , _scope            :: TF.Attr s P.Text
    -- ^ @scope@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (RoleDefinitionData s) where
    toObject RoleDefinitionData'{..} = catMaybes
        [ TF.assign "role_definition_id" <$> TF.attribute _roleDefinitionId
        , TF.assign "scope" <$> TF.attribute _scope
        ]

roleDefinitionData
    :: TF.Attr s P.Text -- ^ @role_definition_id@ - 'P.roleDefinitionId'
    -> TF.Attr s P.Text -- ^ @scope@ - 'P.scope'
    -> TF.DataSource P.Provider (RoleDefinitionData s)
roleDefinitionData _roleDefinitionId _scope =
    TF.newDataSource "azurerm_role_definition" $
        RoleDefinitionData'
            { _roleDefinitionId = _roleDefinitionId
            , _scope = _scope
            }

instance P.HasRoleDefinitionId (RoleDefinitionData s) (TF.Attr s P.Text) where
    roleDefinitionId =
        P.lens (_roleDefinitionId :: RoleDefinitionData s -> TF.Attr s P.Text)
               (\s a -> s { _roleDefinitionId = a
                          } :: RoleDefinitionData s)

instance P.HasScope (RoleDefinitionData s) (TF.Attr s P.Text) where
    scope =
        P.lens (_scope :: RoleDefinitionData s -> TF.Attr s P.Text)
               (\s a -> s { _scope = a
                          } :: RoleDefinitionData s)

instance s ~ s' => P.HasComputedAssignableScopes (TF.Ref s' (RoleDefinitionData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAssignableScopes x = TF.compute (TF.refKey x) "assignable_scopes"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (RoleDefinitionData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedName (TF.Ref s' (RoleDefinitionData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedPermissions (TF.Ref s' (RoleDefinitionData s)) (TF.Attr s [Permissions s]) where
    computedPermissions x = TF.compute (TF.refKey x) "permissions"

instance s ~ s' => P.HasComputedType' (TF.Ref s' (RoleDefinitionData s)) (TF.Attr s P.Text) where
    computedType' x = TF.compute (TF.refKey x) "type"

-- | @azurerm_route_table@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_route_table terraform documentation>
-- for more information.
data RouteTableData s = RouteTableData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (RouteTableData s) where
    toObject RouteTableData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

routeTableData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (RouteTableData s)
routeTableData _name _resourceGroupName =
    TF.newDataSource "azurerm_route_table" $
        RouteTableData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (RouteTableData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: RouteTableData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: RouteTableData s)

instance P.HasResourceGroupName (RouteTableData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: RouteTableData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: RouteTableData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (RouteTableData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedRoute (TF.Ref s' (RouteTableData s)) (TF.Attr s [Route s]) where
    computedRoute x = TF.compute (TF.refKey x) "route"

instance s ~ s' => P.HasComputedSubnets (TF.Ref s' (RouteTableData s)) (TF.Attr s [TF.Attr s (TF.Attr s P.Text)]) where
    computedSubnets x = TF.compute (TF.refKey x) "subnets"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (RouteTableData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_scheduler_job_collection@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_scheduler_job_collection terraform documentation>
-- for more information.
data SchedulerJobCollectionData s = SchedulerJobCollectionData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (SchedulerJobCollectionData s) where
    toObject SchedulerJobCollectionData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

schedulerJobCollectionData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (SchedulerJobCollectionData s)
schedulerJobCollectionData _name _resourceGroupName =
    TF.newDataSource "azurerm_scheduler_job_collection" $
        SchedulerJobCollectionData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (SchedulerJobCollectionData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SchedulerJobCollectionData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: SchedulerJobCollectionData s)

instance P.HasResourceGroupName (SchedulerJobCollectionData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: SchedulerJobCollectionData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: SchedulerJobCollectionData s)

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (SchedulerJobCollectionData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedQuota (TF.Ref s' (SchedulerJobCollectionData s)) (TF.Attr s [Quota s]) where
    computedQuota x = TF.compute (TF.refKey x) "quota"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (SchedulerJobCollectionData s)) (TF.Attr s P.Text) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedState (TF.Ref s' (SchedulerJobCollectionData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "state"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (SchedulerJobCollectionData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_snapshot@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_snapshot terraform documentation>
-- for more information.
data SnapshotData s = SnapshotData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (SnapshotData s) where
    toObject SnapshotData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

snapshotData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (SnapshotData s)
snapshotData _name _resourceGroupName =
    TF.newDataSource "azurerm_snapshot" $
        SnapshotData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (SnapshotData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: SnapshotData s)

instance P.HasResourceGroupName (SnapshotData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: SnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: SnapshotData s)

instance s ~ s' => P.HasComputedCreationOption (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedCreationOption x = TF.compute (TF.refKey x) "creation_option"

instance s ~ s' => P.HasComputedDiskSizeGb (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedDiskSizeGb x = TF.compute (TF.refKey x) "disk_size_gb"

instance s ~ s' => P.HasComputedEncryptionSettings (TF.Ref s' (SnapshotData s)) (TF.Attr s [EncryptionSettings s]) where
    computedEncryptionSettings x = TF.compute (TF.refKey x) "encryption_settings"

instance s ~ s' => P.HasComputedOsType (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedOsType x = TF.compute (TF.refKey x) "os_type"

instance s ~ s' => P.HasComputedSourceResourceId (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedSourceResourceId x = TF.compute (TF.refKey x) "source_resource_id"

instance s ~ s' => P.HasComputedSourceUri (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedSourceUri x = TF.compute (TF.refKey x) "source_uri"

instance s ~ s' => P.HasComputedStorageAccountId (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedStorageAccountId x = TF.compute (TF.refKey x) "storage_account_id"

instance s ~ s' => P.HasComputedTimeCreated (TF.Ref s' (SnapshotData s)) (TF.Attr s P.Text) where
    computedTimeCreated x = TF.compute (TF.refKey x) "time_created"

-- | @azurerm_storage_account@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_storage_account terraform documentation>
-- for more information.
data StorageAccountData s = StorageAccountData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (StorageAccountData s) where
    toObject StorageAccountData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

storageAccountData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (StorageAccountData s)
storageAccountData _name _resourceGroupName =
    TF.newDataSource "azurerm_storage_account" $
        StorageAccountData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (StorageAccountData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: StorageAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: StorageAccountData s)

instance P.HasResourceGroupName (StorageAccountData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: StorageAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: StorageAccountData s)

instance s ~ s' => P.HasComputedAccessTier (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedAccessTier x = TF.compute (TF.refKey x) "access_tier"

instance s ~ s' => P.HasComputedAccountEncryptionSource (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedAccountEncryptionSource x = TF.compute (TF.refKey x) "account_encryption_source"

instance s ~ s' => P.HasComputedAccountKind (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedAccountKind x = TF.compute (TF.refKey x) "account_kind"

instance s ~ s' => P.HasComputedAccountReplicationType (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedAccountReplicationType x = TF.compute (TF.refKey x) "account_replication_type"

instance s ~ s' => P.HasComputedAccountTier (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedAccountTier x = TF.compute (TF.refKey x) "account_tier"

instance s ~ s' => P.HasComputedCustomDomain (TF.Ref s' (StorageAccountData s)) (TF.Attr s [CustomDomain s]) where
    computedCustomDomain x = TF.compute (TF.refKey x) "custom_domain"

instance s ~ s' => P.HasComputedEnableBlobEncryption (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Bool) where
    computedEnableBlobEncryption x = TF.compute (TF.refKey x) "enable_blob_encryption"

instance s ~ s' => P.HasComputedEnableFileEncryption (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Bool) where
    computedEnableFileEncryption x = TF.compute (TF.refKey x) "enable_file_encryption"

instance s ~ s' => P.HasComputedEnableHttpsTrafficOnly (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Bool) where
    computedEnableHttpsTrafficOnly x = TF.compute (TF.refKey x) "enable_https_traffic_only"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedPrimaryAccessKey (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryAccessKey x = TF.compute (TF.refKey x) "primary_access_key"

instance s ~ s' => P.HasComputedPrimaryBlobConnectionString (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryBlobConnectionString x = TF.compute (TF.refKey x) "primary_blob_connection_string"

instance s ~ s' => P.HasComputedPrimaryBlobEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryBlobEndpoint x = TF.compute (TF.refKey x) "primary_blob_endpoint"

instance s ~ s' => P.HasComputedPrimaryConnectionString (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryConnectionString x = TF.compute (TF.refKey x) "primary_connection_string"

instance s ~ s' => P.HasComputedPrimaryFileEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryFileEndpoint x = TF.compute (TF.refKey x) "primary_file_endpoint"

instance s ~ s' => P.HasComputedPrimaryLocation (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryLocation x = TF.compute (TF.refKey x) "primary_location"

instance s ~ s' => P.HasComputedPrimaryQueueEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryQueueEndpoint x = TF.compute (TF.refKey x) "primary_queue_endpoint"

instance s ~ s' => P.HasComputedPrimaryTableEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedPrimaryTableEndpoint x = TF.compute (TF.refKey x) "primary_table_endpoint"

instance s ~ s' => P.HasComputedSecondaryAccessKey (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryAccessKey x = TF.compute (TF.refKey x) "secondary_access_key"

instance s ~ s' => P.HasComputedSecondaryBlobConnectionString (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryBlobConnectionString x = TF.compute (TF.refKey x) "secondary_blob_connection_string"

instance s ~ s' => P.HasComputedSecondaryBlobEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryBlobEndpoint x = TF.compute (TF.refKey x) "secondary_blob_endpoint"

instance s ~ s' => P.HasComputedSecondaryConnectionString (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryConnectionString x = TF.compute (TF.refKey x) "secondary_connection_string"

instance s ~ s' => P.HasComputedSecondaryLocation (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryLocation x = TF.compute (TF.refKey x) "secondary_location"

instance s ~ s' => P.HasComputedSecondaryQueueEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryQueueEndpoint x = TF.compute (TF.refKey x) "secondary_queue_endpoint"

instance s ~ s' => P.HasComputedSecondaryTableEndpoint (TF.Ref s' (StorageAccountData s)) (TF.Attr s P.Text) where
    computedSecondaryTableEndpoint x = TF.compute (TF.refKey x) "secondary_table_endpoint"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (StorageAccountData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @azurerm_storage_account_sas@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_storage_account_sas terraform documentation>
-- for more information.
data StorageAccountSasData s = StorageAccountSasData'
    { _connectionString :: TF.Attr s P.Text
    -- ^ @connection_string@ - (Required)
    --
    , _expiry           :: TF.Attr s P.Text
    -- ^ @expiry@ - (Required)
    --
    , _httpsOnly        :: TF.Attr s P.Bool
    -- ^ @https_only@ - (Optional)
    --
    , _permissions      :: TF.Attr s [Permissions s]
    -- ^ @permissions@ - (Required)
    --
    , _resourceTypes    :: TF.Attr s [ResourceTypes s]
    -- ^ @resource_types@ - (Required)
    --
    , _services         :: TF.Attr s [Services s]
    -- ^ @services@ - (Required)
    --
    , _start            :: TF.Attr s P.Text
    -- ^ @start@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (StorageAccountSasData s) where
    toObject StorageAccountSasData'{..} = catMaybes
        [ TF.assign "connection_string" <$> TF.attribute _connectionString
        , TF.assign "expiry" <$> TF.attribute _expiry
        , TF.assign "https_only" <$> TF.attribute _httpsOnly
        , TF.assign "permissions" <$> TF.attribute _permissions
        , TF.assign "resource_types" <$> TF.attribute _resourceTypes
        , TF.assign "services" <$> TF.attribute _services
        , TF.assign "start" <$> TF.attribute _start
        ]

storageAccountSasData
    :: TF.Attr s P.Text -- ^ @connection_string@ - 'P.connectionString'
    -> TF.Attr s P.Text -- ^ @expiry@ - 'P.expiry'
    -> TF.Attr s [Permissions s] -- ^ @permissions@ - 'P.permissions'
    -> TF.Attr s [ResourceTypes s] -- ^ @resource_types@ - 'P.resourceTypes'
    -> TF.Attr s [Services s] -- ^ @services@ - 'P.services'
    -> TF.Attr s P.Text -- ^ @start@ - 'P.start'
    -> TF.DataSource P.Provider (StorageAccountSasData s)
storageAccountSasData _connectionString _expiry _permissions _resourceTypes _services _start =
    TF.newDataSource "azurerm_storage_account_sas" $
        StorageAccountSasData'
            { _connectionString = _connectionString
            , _expiry = _expiry
            , _httpsOnly = TF.value P.True
            , _permissions = _permissions
            , _resourceTypes = _resourceTypes
            , _services = _services
            , _start = _start
            }

instance P.HasConnectionString (StorageAccountSasData s) (TF.Attr s P.Text) where
    connectionString =
        P.lens (_connectionString :: StorageAccountSasData s -> TF.Attr s P.Text)
               (\s a -> s { _connectionString = a
                          } :: StorageAccountSasData s)

instance P.HasExpiry (StorageAccountSasData s) (TF.Attr s P.Text) where
    expiry =
        P.lens (_expiry :: StorageAccountSasData s -> TF.Attr s P.Text)
               (\s a -> s { _expiry = a
                          } :: StorageAccountSasData s)

instance P.HasHttpsOnly (StorageAccountSasData s) (TF.Attr s P.Bool) where
    httpsOnly =
        P.lens (_httpsOnly :: StorageAccountSasData s -> TF.Attr s P.Bool)
               (\s a -> s { _httpsOnly = a
                          } :: StorageAccountSasData s)

instance P.HasPermissions (StorageAccountSasData s) (TF.Attr s [Permissions s]) where
    permissions =
        P.lens (_permissions :: StorageAccountSasData s -> TF.Attr s [Permissions s])
               (\s a -> s { _permissions = a
                          } :: StorageAccountSasData s)

instance P.HasResourceTypes (StorageAccountSasData s) (TF.Attr s [ResourceTypes s]) where
    resourceTypes =
        P.lens (_resourceTypes :: StorageAccountSasData s -> TF.Attr s [ResourceTypes s])
               (\s a -> s { _resourceTypes = a
                          } :: StorageAccountSasData s)

instance P.HasServices (StorageAccountSasData s) (TF.Attr s [Services s]) where
    services =
        P.lens (_services :: StorageAccountSasData s -> TF.Attr s [Services s])
               (\s a -> s { _services = a
                          } :: StorageAccountSasData s)

instance P.HasStart (StorageAccountSasData s) (TF.Attr s P.Text) where
    start =
        P.lens (_start :: StorageAccountSasData s -> TF.Attr s P.Text)
               (\s a -> s { _start = a
                          } :: StorageAccountSasData s)

instance s ~ s' => P.HasComputedSas (TF.Ref s' (StorageAccountSasData s)) (TF.Attr s P.Text) where
    computedSas x = TF.compute (TF.refKey x) "sas"

-- | @azurerm_subnet@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_subnet terraform documentation>
-- for more information.
data SubnetData s = SubnetData'
    { _name               :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName  :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    , _virtualNetworkName :: TF.Attr s P.Text
    -- ^ @virtual_network_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (SubnetData s) where
    toObject SubnetData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        , TF.assign "virtual_network_name" <$> TF.attribute _virtualNetworkName
        ]

subnetData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.Attr s P.Text -- ^ @virtual_network_name@ - 'P.virtualNetworkName'
    -> TF.DataSource P.Provider (SubnetData s)
subnetData _name _resourceGroupName _virtualNetworkName =
    TF.newDataSource "azurerm_subnet" $
        SubnetData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            , _virtualNetworkName = _virtualNetworkName
            }

instance P.HasName (SubnetData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SubnetData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: SubnetData s)

instance P.HasResourceGroupName (SubnetData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: SubnetData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: SubnetData s)

instance P.HasVirtualNetworkName (SubnetData s) (TF.Attr s P.Text) where
    virtualNetworkName =
        P.lens (_virtualNetworkName :: SubnetData s -> TF.Attr s P.Text)
               (\s a -> s { _virtualNetworkName = a
                          } :: SubnetData s)

instance s ~ s' => P.HasComputedAddressPrefix (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedAddressPrefix x = TF.compute (TF.refKey x) "address_prefix"

instance s ~ s' => P.HasComputedIpConfigurations (TF.Ref s' (SubnetData s)) (TF.Attr s [TF.Attr s (TF.Attr s P.Text)]) where
    computedIpConfigurations x = TF.compute (TF.refKey x) "ip_configurations"

instance s ~ s' => P.HasComputedNetworkSecurityGroupId (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedNetworkSecurityGroupId x = TF.compute (TF.refKey x) "network_security_group_id"

instance s ~ s' => P.HasComputedRouteTableId (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedRouteTableId x = TF.compute (TF.refKey x) "route_table_id"

-- | @azurerm_subscription@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_subscription terraform documentation>
-- for more information.
data SubscriptionData s = SubscriptionData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (SubscriptionData s) where
    toObject _ = []

subscriptionData
    :: TF.DataSource P.Provider (SubscriptionData s)
subscriptionData =
    TF.newDataSource "azurerm_subscription" $
        SubscriptionData'

instance s ~ s' => P.HasComputedDisplayName (TF.Ref s' (SubscriptionData s)) (TF.Attr s P.Text) where
    computedDisplayName x = TF.compute (TF.refKey x) "display_name"

instance s ~ s' => P.HasComputedLocationPlacementId (TF.Ref s' (SubscriptionData s)) (TF.Attr s P.Text) where
    computedLocationPlacementId x = TF.compute (TF.refKey x) "location_placement_id"

instance s ~ s' => P.HasComputedQuotaId (TF.Ref s' (SubscriptionData s)) (TF.Attr s P.Text) where
    computedQuotaId x = TF.compute (TF.refKey x) "quota_id"

instance s ~ s' => P.HasComputedSpendingLimit (TF.Ref s' (SubscriptionData s)) (TF.Attr s P.Text) where
    computedSpendingLimit x = TF.compute (TF.refKey x) "spending_limit"

instance s ~ s' => P.HasComputedState (TF.Ref s' (SubscriptionData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "state"

instance s ~ s' => P.HasComputedSubscriptionId (TF.Ref s' (SubscriptionData s)) (TF.Attr s P.Text) where
    computedSubscriptionId x = TF.compute (TF.refKey x) "subscription_id"

-- | @azurerm_subscriptions@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_subscriptions terraform documentation>
-- for more information.
data SubscriptionsData s = SubscriptionsData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (SubscriptionsData s) where
    toObject _ = []

subscriptionsData
    :: TF.DataSource P.Provider (SubscriptionsData s)
subscriptionsData =
    TF.newDataSource "azurerm_subscriptions" $
        SubscriptionsData'

instance s ~ s' => P.HasComputedSubscriptions (TF.Ref s' (SubscriptionsData s)) (TF.Attr s [Subscriptions s]) where
    computedSubscriptions x = TF.compute (TF.refKey x) "subscriptions"

-- | @azurerm_traffic_manager_geographical_location@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_traffic_manager_geographical_location terraform documentation>
-- for more information.
data TrafficManagerGeographicalLocationData s = TrafficManagerGeographicalLocationData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (TrafficManagerGeographicalLocationData s) where
    toObject TrafficManagerGeographicalLocationData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

trafficManagerGeographicalLocationData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (TrafficManagerGeographicalLocationData s)
trafficManagerGeographicalLocationData _name =
    TF.newDataSource "azurerm_traffic_manager_geographical_location" $
        TrafficManagerGeographicalLocationData'
            { _name = _name
            }

instance P.HasName (TrafficManagerGeographicalLocationData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: TrafficManagerGeographicalLocationData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: TrafficManagerGeographicalLocationData s)

-- | @azurerm_virtual_network@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_virtual_network terraform documentation>
-- for more information.
data VirtualNetworkData s = VirtualNetworkData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (VirtualNetworkData s) where
    toObject VirtualNetworkData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

virtualNetworkData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (VirtualNetworkData s)
virtualNetworkData _name _resourceGroupName =
    TF.newDataSource "azurerm_virtual_network" $
        VirtualNetworkData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (VirtualNetworkData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: VirtualNetworkData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: VirtualNetworkData s)

instance P.HasResourceGroupName (VirtualNetworkData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: VirtualNetworkData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: VirtualNetworkData s)

instance s ~ s' => P.HasComputedAddressSpaces (TF.Ref s' (VirtualNetworkData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAddressSpaces x = TF.compute (TF.refKey x) "address_spaces"

instance s ~ s' => P.HasComputedDnsServers (TF.Ref s' (VirtualNetworkData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedDnsServers x = TF.compute (TF.refKey x) "dns_servers"

instance s ~ s' => P.HasComputedSubnets (TF.Ref s' (VirtualNetworkData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSubnets x = TF.compute (TF.refKey x) "subnets"

instance s ~ s' => P.HasComputedVnetPeerings (TF.Ref s' (VirtualNetworkData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedVnetPeerings x = TF.compute (TF.refKey x) "vnet_peerings"

-- | @azurerm_virtual_network_gateway@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AzureRM/azurerm_virtual_network_gateway terraform documentation>
-- for more information.
data VirtualNetworkGatewayData s = VirtualNetworkGatewayData'
    { _name              :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _resourceGroupName :: TF.Attr s P.Text
    -- ^ @resource_group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (VirtualNetworkGatewayData s) where
    toObject VirtualNetworkGatewayData'{..} = catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "resource_group_name" <$> TF.attribute _resourceGroupName
        ]

virtualNetworkGatewayData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @resource_group_name@ - 'P.resourceGroupName'
    -> TF.DataSource P.Provider (VirtualNetworkGatewayData s)
virtualNetworkGatewayData _name _resourceGroupName =
    TF.newDataSource "azurerm_virtual_network_gateway" $
        VirtualNetworkGatewayData'
            { _name = _name
            , _resourceGroupName = _resourceGroupName
            }

instance P.HasName (VirtualNetworkGatewayData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: VirtualNetworkGatewayData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: VirtualNetworkGatewayData s)

instance P.HasResourceGroupName (VirtualNetworkGatewayData s) (TF.Attr s P.Text) where
    resourceGroupName =
        P.lens (_resourceGroupName :: VirtualNetworkGatewayData s -> TF.Attr s P.Text)
               (\s a -> s { _resourceGroupName = a
                          } :: VirtualNetworkGatewayData s)

instance s ~ s' => P.HasComputedActiveActive (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Bool) where
    computedActiveActive x = TF.compute (TF.refKey x) "active_active"

instance s ~ s' => P.HasComputedBgpSettings (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s [BgpSettings s]) where
    computedBgpSettings x = TF.compute (TF.refKey x) "bgp_settings"

instance s ~ s' => P.HasComputedDefaultLocalNetworkGatewayId (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Text) where
    computedDefaultLocalNetworkGatewayId x = TF.compute (TF.refKey x) "default_local_network_gateway_id"

instance s ~ s' => P.HasComputedEnableBgp (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Bool) where
    computedEnableBgp x = TF.compute (TF.refKey x) "enable_bgp"

instance s ~ s' => P.HasComputedIpConfiguration (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s [IpConfiguration s]) where
    computedIpConfiguration x = TF.compute (TF.refKey x) "ip_configuration"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedSku (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Text) where
    computedSku x = TF.compute (TF.refKey x) "sku"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedType' (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Text) where
    computedType' x = TF.compute (TF.refKey x) "type"

instance s ~ s' => P.HasComputedVpnClientConfiguration (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s [VpnClientConfiguration s]) where
    computedVpnClientConfiguration x = TF.compute (TF.refKey x) "vpn_client_configuration"

instance s ~ s' => P.HasComputedVpnType (TF.Ref s' (VirtualNetworkGatewayData s)) (TF.Attr s P.Text) where
    computedVpnType x = TF.compute (TF.refKey x) "vpn_type"
