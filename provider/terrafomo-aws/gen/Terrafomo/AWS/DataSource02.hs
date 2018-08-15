-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.AWS.DataSource02
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.AWS.DataSource02
    (
    -- * DataSource Datatypes
    -- ** aws_prefix_list
      PrefixListData (..)
    , prefixListData

    -- ** aws_pricing_product
    , PricingProductData (..)
    , pricingProductData

    -- ** aws_rds_cluster
    , RdsClusterData (..)
    , rdsClusterData

    -- ** aws_redshift_cluster
    , RedshiftClusterData (..)
    , redshiftClusterData

    -- ** aws_redshift_service_account
    , RedshiftServiceAccountData (..)
    , redshiftServiceAccountData

    -- ** aws_region
    , RegionData (..)
    , regionData

    -- ** aws_route
    , RouteData (..)
    , routeData

    -- ** aws_route53_zone
    , Route53ZoneData (..)
    , route53ZoneData

    -- ** aws_route_table
    , RouteTableData (..)
    , routeTableData

    -- ** aws_route_tables
    , RouteTablesData (..)
    , routeTablesData

    -- ** aws_s3_bucket
    , S3BucketData (..)
    , s3BucketData

    -- ** aws_s3_bucket_object
    , S3BucketObjectData (..)
    , s3BucketObjectData

    -- ** aws_secretsmanager_secret
    , SecretsmanagerSecretData (..)
    , secretsmanagerSecretData

    -- ** aws_secretsmanager_secret_version
    , SecretsmanagerSecretVersionData (..)
    , secretsmanagerSecretVersionData

    -- ** aws_security_group
    , SecurityGroupData (..)
    , securityGroupData

    -- ** aws_security_groups
    , SecurityGroupsData (..)
    , securityGroupsData

    -- ** aws_sns_topic
    , SnsTopicData (..)
    , snsTopicData

    -- ** aws_sqs_queue
    , SqsQueueData (..)
    , sqsQueueData

    -- ** aws_ssm_parameter
    , SsmParameterData (..)
    , ssmParameterData

    -- ** aws_storagegateway_local_disk
    , StoragegatewayLocalDiskData (..)
    , storagegatewayLocalDiskData

    -- ** aws_subnet
    , SubnetData (..)
    , subnetData

    -- ** aws_subnet_ids
    , SubnetIdsData (..)
    , subnetIdsData

    -- ** aws_vpc
    , VpcData (..)
    , vpcData

    -- ** aws_vpc_dhcp_options
    , VpcDhcpOptionsData (..)
    , vpcDhcpOptionsData

    -- ** aws_vpc_endpoint
    , VpcEndpointData (..)
    , vpcEndpointData

    -- ** aws_vpc_endpoint_service
    , VpcEndpointServiceData (..)
    , vpcEndpointServiceData

    -- ** aws_vpc_peering_connection
    , VpcPeeringConnectionData (..)
    , vpcPeeringConnectionData

    -- ** aws_vpcs
    , VpcsData (..)
    , vpcsData

    -- ** aws_vpn_gateway
    , VpnGatewayData (..)
    , vpnGatewayData

    ) where

import Data.Functor ((<$>))

import GHC.Base (($))

import Terrafomo.AWS.Settings

import qualified Data.Hashable          as P
import qualified Data.HashMap.Strict    as P
import qualified Data.HashMap.Strict    as Map
import qualified Data.List.NonEmpty     as P
import qualified Data.Maybe             as P
import qualified Data.Monoid            as P
import qualified Data.Text              as P
import qualified GHC.Generics           as P
import qualified Lens.Micro             as P
import qualified Prelude                as P
import qualified Terrafomo.Attribute    as TF
import qualified Terrafomo.AWS.Lens     as P
import qualified Terrafomo.AWS.Provider as P
import qualified Terrafomo.AWS.Types    as P
import qualified Terrafomo.HCL          as TF
import qualified Terrafomo.Name         as TF
import qualified Terrafomo.Schema       as TF
import qualified Terrafomo.Validator    as TF

-- | @aws_prefix_list@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/prefix_list.html terraform documentation>
-- for more information.
data PrefixListData s = PrefixListData'
    { _prefixListId :: TF.Attr s P.Text
    -- ^ @prefix_list_id@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

prefixListData
    :: P.DataSource (PrefixListData s)
prefixListData =
    TF.newDataSource "aws_prefix_list" TF.validator $
        PrefixListData'
            { _prefixListId = TF.Nil
            }

instance TF.IsObject (PrefixListData s) where
    toObject PrefixListData'{..} = P.catMaybes
        [ TF.assign "prefix_list_id" <$> TF.attribute _prefixListId
        ]

instance TF.IsValid (PrefixListData s) where
    validator = P.mempty

instance P.HasPrefixListId (PrefixListData s) (TF.Attr s P.Text) where
    prefixListId =
        P.lens (_prefixListId :: PrefixListData s -> TF.Attr s P.Text)
               (\s a -> s { _prefixListId = a } :: PrefixListData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (PrefixListData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedCidrBlocks (TF.Ref s' (PrefixListData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedCidrBlocks x = TF.compute (TF.refKey x) "cidr_blocks"

instance s ~ s' => P.HasComputedName (TF.Ref s' (PrefixListData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

-- | @aws_pricing_product@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/pricing_product.html terraform documentation>
-- for more information.
data PricingProductData s = PricingProductData'
    { _filters :: TF.Attr s (P.NonEmpty (TF.Attr s (PricingProductFilters s)))
    -- ^ @filters@ - (Required)
    --
    , _serviceCode :: TF.Attr s P.Text
    -- ^ @service_code@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

pricingProductData
    :: TF.Attr s (P.NonEmpty (TF.Attr s (PricingProductFilters s))) -- ^ @filters@ - 'P.filters'
    -> TF.Attr s P.Text -- ^ @service_code@ - 'P.serviceCode'
    -> P.DataSource (PricingProductData s)
pricingProductData _filters _serviceCode =
    TF.newDataSource "aws_pricing_product" TF.validator $
        PricingProductData'
            { _filters = _filters
            , _serviceCode = _serviceCode
            }

instance TF.IsObject (PricingProductData s) where
    toObject PricingProductData'{..} = P.catMaybes
        [ TF.assign "filters" <$> TF.attribute _filters
        , TF.assign "service_code" <$> TF.attribute _serviceCode
        ]

instance TF.IsValid (PricingProductData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filters"
                  (_filters
                      :: PricingProductData s -> TF.Attr s (P.NonEmpty (TF.Attr s (PricingProductFilters s))))
                  TF.validator

instance P.HasFilters (PricingProductData s) (TF.Attr s (P.NonEmpty (TF.Attr s (PricingProductFilters s)))) where
    filters =
        P.lens (_filters :: PricingProductData s -> TF.Attr s (P.NonEmpty (TF.Attr s (PricingProductFilters s))))
               (\s a -> s { _filters = a } :: PricingProductData s)

instance P.HasServiceCode (PricingProductData s) (TF.Attr s P.Text) where
    serviceCode =
        P.lens (_serviceCode :: PricingProductData s -> TF.Attr s P.Text)
               (\s a -> s { _serviceCode = a } :: PricingProductData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (PricingProductData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedResult (TF.Ref s' (PricingProductData s)) (TF.Attr s P.Text) where
    computedResult x = TF.compute (TF.refKey x) "result"

-- | @aws_rds_cluster@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/rds_cluster.html terraform documentation>
-- for more information.
data RdsClusterData s = RdsClusterData'
    { _clusterIdentifier :: TF.Attr s P.Text
    -- ^ @cluster_identifier@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

rdsClusterData
    :: TF.Attr s P.Text -- ^ @cluster_identifier@ - 'P.clusterIdentifier'
    -> P.DataSource (RdsClusterData s)
rdsClusterData _clusterIdentifier =
    TF.newDataSource "aws_rds_cluster" TF.validator $
        RdsClusterData'
            { _clusterIdentifier = _clusterIdentifier
            }

instance TF.IsObject (RdsClusterData s) where
    toObject RdsClusterData'{..} = P.catMaybes
        [ TF.assign "cluster_identifier" <$> TF.attribute _clusterIdentifier
        ]

instance TF.IsValid (RdsClusterData s) where
    validator = P.mempty

instance P.HasClusterIdentifier (RdsClusterData s) (TF.Attr s P.Text) where
    clusterIdentifier =
        P.lens (_clusterIdentifier :: RdsClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _clusterIdentifier = a } :: RdsClusterData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedAvailabilityZones (TF.Ref s' (RdsClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAvailabilityZones x = TF.compute (TF.refKey x) "availability_zones"

instance s ~ s' => P.HasComputedBackupRetentionPeriod (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Integer) where
    computedBackupRetentionPeriod x = TF.compute (TF.refKey x) "backup_retention_period"

instance s ~ s' => P.HasComputedClusterMembers (TF.Ref s' (RdsClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedClusterMembers x = TF.compute (TF.refKey x) "cluster_members"

instance s ~ s' => P.HasComputedClusterResourceId (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedClusterResourceId x = TF.compute (TF.refKey x) "cluster_resource_id"

instance s ~ s' => P.HasComputedDatabaseName (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedDatabaseName x = TF.compute (TF.refKey x) "database_name"

instance s ~ s' => P.HasComputedDbClusterParameterGroupName (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedDbClusterParameterGroupName x = TF.compute (TF.refKey x) "db_cluster_parameter_group_name"

instance s ~ s' => P.HasComputedDbSubnetGroupName (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedDbSubnetGroupName x = TF.compute (TF.refKey x) "db_subnet_group_name"

instance s ~ s' => P.HasComputedEnabledCloudwatchLogsExports (TF.Ref s' (RdsClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedEnabledCloudwatchLogsExports x = TF.compute (TF.refKey x) "enabled_cloudwatch_logs_exports"

instance s ~ s' => P.HasComputedEndpoint (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedEndpoint x = TF.compute (TF.refKey x) "endpoint"

instance s ~ s' => P.HasComputedEngine (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedEngine x = TF.compute (TF.refKey x) "engine"

instance s ~ s' => P.HasComputedEngineVersion (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedEngineVersion x = TF.compute (TF.refKey x) "engine_version"

instance s ~ s' => P.HasComputedFinalSnapshotIdentifier (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedFinalSnapshotIdentifier x = TF.compute (TF.refKey x) "final_snapshot_identifier"

instance s ~ s' => P.HasComputedIamDatabaseAuthenticationEnabled (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Bool) where
    computedIamDatabaseAuthenticationEnabled x = TF.compute (TF.refKey x) "iam_database_authentication_enabled"

instance s ~ s' => P.HasComputedIamRoles (TF.Ref s' (RdsClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIamRoles x = TF.compute (TF.refKey x) "iam_roles"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "kms_key_id"

instance s ~ s' => P.HasComputedMasterUsername (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedMasterUsername x = TF.compute (TF.refKey x) "master_username"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "port"

instance s ~ s' => P.HasComputedPreferredBackupWindow (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedPreferredBackupWindow x = TF.compute (TF.refKey x) "preferred_backup_window"

instance s ~ s' => P.HasComputedPreferredMaintenanceWindow (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedPreferredMaintenanceWindow x = TF.compute (TF.refKey x) "preferred_maintenance_window"

instance s ~ s' => P.HasComputedReaderEndpoint (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedReaderEndpoint x = TF.compute (TF.refKey x) "reader_endpoint"

instance s ~ s' => P.HasComputedReplicationSourceIdentifier (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Text) where
    computedReplicationSourceIdentifier x = TF.compute (TF.refKey x) "replication_source_identifier"

instance s ~ s' => P.HasComputedStorageEncrypted (TF.Ref s' (RdsClusterData s)) (TF.Attr s P.Bool) where
    computedStorageEncrypted x = TF.compute (TF.refKey x) "storage_encrypted"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (RdsClusterData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcSecurityGroupIds (TF.Ref s' (RdsClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVpcSecurityGroupIds x = TF.compute (TF.refKey x) "vpc_security_group_ids"

-- | @aws_redshift_cluster@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/redshift_cluster.html terraform documentation>
-- for more information.
data RedshiftClusterData s = RedshiftClusterData'
    { _clusterIdentifier :: TF.Attr s P.Text
    -- ^ @cluster_identifier@ - (Required)
    --
    , _tags              :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @tags@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

redshiftClusterData
    :: TF.Attr s P.Text -- ^ @cluster_identifier@ - 'P.clusterIdentifier'
    -> P.DataSource (RedshiftClusterData s)
redshiftClusterData _clusterIdentifier =
    TF.newDataSource "aws_redshift_cluster" TF.validator $
        RedshiftClusterData'
            { _clusterIdentifier = _clusterIdentifier
            , _tags = TF.Nil
            }

instance TF.IsObject (RedshiftClusterData s) where
    toObject RedshiftClusterData'{..} = P.catMaybes
        [ TF.assign "cluster_identifier" <$> TF.attribute _clusterIdentifier
        , TF.assign "tags" <$> TF.attribute _tags
        ]

instance TF.IsValid (RedshiftClusterData s) where
    validator = P.mempty

instance P.HasClusterIdentifier (RedshiftClusterData s) (TF.Attr s P.Text) where
    clusterIdentifier =
        P.lens (_clusterIdentifier :: RedshiftClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _clusterIdentifier = a } :: RedshiftClusterData s)

instance P.HasTags (RedshiftClusterData s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    tags =
        P.lens (_tags :: RedshiftClusterData s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _tags = a } :: RedshiftClusterData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedAllowVersionUpgrade (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Bool) where
    computedAllowVersionUpgrade x = TF.compute (TF.refKey x) "allow_version_upgrade"

instance s ~ s' => P.HasComputedAutomatedSnapshotRetentionPeriod (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Integer) where
    computedAutomatedSnapshotRetentionPeriod x = TF.compute (TF.refKey x) "automated_snapshot_retention_period"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Zone) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "availability_zone"

instance s ~ s' => P.HasComputedBucketName (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedBucketName x = TF.compute (TF.refKey x) "bucket_name"

instance s ~ s' => P.HasComputedClusterParameterGroupName (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedClusterParameterGroupName x = TF.compute (TF.refKey x) "cluster_parameter_group_name"

instance s ~ s' => P.HasComputedClusterPublicKey (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedClusterPublicKey x = TF.compute (TF.refKey x) "cluster_public_key"

instance s ~ s' => P.HasComputedClusterRevisionNumber (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedClusterRevisionNumber x = TF.compute (TF.refKey x) "cluster_revision_number"

instance s ~ s' => P.HasComputedClusterSecurityGroups (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedClusterSecurityGroups x = TF.compute (TF.refKey x) "cluster_security_groups"

instance s ~ s' => P.HasComputedClusterSubnetGroupName (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedClusterSubnetGroupName x = TF.compute (TF.refKey x) "cluster_subnet_group_name"

instance s ~ s' => P.HasComputedClusterType (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedClusterType x = TF.compute (TF.refKey x) "cluster_type"

instance s ~ s' => P.HasComputedClusterVersion (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedClusterVersion x = TF.compute (TF.refKey x) "cluster_version"

instance s ~ s' => P.HasComputedDatabaseName (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedDatabaseName x = TF.compute (TF.refKey x) "database_name"

instance s ~ s' => P.HasComputedElasticIp (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedElasticIp x = TF.compute (TF.refKey x) "elastic_ip"

instance s ~ s' => P.HasComputedEnableLogging (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Bool) where
    computedEnableLogging x = TF.compute (TF.refKey x) "enable_logging"

instance s ~ s' => P.HasComputedEncrypted (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Bool) where
    computedEncrypted x = TF.compute (TF.refKey x) "encrypted"

instance s ~ s' => P.HasComputedEndpoint (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedEndpoint x = TF.compute (TF.refKey x) "endpoint"

instance s ~ s' => P.HasComputedEnhancedVpcRouting (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Bool) where
    computedEnhancedVpcRouting x = TF.compute (TF.refKey x) "enhanced_vpc_routing"

instance s ~ s' => P.HasComputedIamRoles (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIamRoles x = TF.compute (TF.refKey x) "iam_roles"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "kms_key_id"

instance s ~ s' => P.HasComputedMasterUsername (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedMasterUsername x = TF.compute (TF.refKey x) "master_username"

instance s ~ s' => P.HasComputedNodeType (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedNodeType x = TF.compute (TF.refKey x) "node_type"

instance s ~ s' => P.HasComputedNumberOfNodes (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Integer) where
    computedNumberOfNodes x = TF.compute (TF.refKey x) "number_of_nodes"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "port"

instance s ~ s' => P.HasComputedPreferredMaintenanceWindow (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedPreferredMaintenanceWindow x = TF.compute (TF.refKey x) "preferred_maintenance_window"

instance s ~ s' => P.HasComputedPubliclyAccessible (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Bool) where
    computedPubliclyAccessible x = TF.compute (TF.refKey x) "publicly_accessible"

instance s ~ s' => P.HasComputedS3KeyPrefix (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedS3KeyPrefix x = TF.compute (TF.refKey x) "s3_key_prefix"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

instance s ~ s' => P.HasComputedVpcSecurityGroupIds (TF.Ref s' (RedshiftClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVpcSecurityGroupIds x = TF.compute (TF.refKey x) "vpc_security_group_ids"

-- | @aws_redshift_service_account@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/redshift_service_account.html terraform documentation>
-- for more information.
data RedshiftServiceAccountData s = RedshiftServiceAccountData'
    { _region :: TF.Attr s P.Text
    -- ^ @region@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

redshiftServiceAccountData
    :: P.DataSource (RedshiftServiceAccountData s)
redshiftServiceAccountData =
    TF.newDataSource "aws_redshift_service_account" TF.validator $
        RedshiftServiceAccountData'
            { _region = TF.Nil
            }

instance TF.IsObject (RedshiftServiceAccountData s) where
    toObject RedshiftServiceAccountData'{..} = P.catMaybes
        [ TF.assign "region" <$> TF.attribute _region
        ]

instance TF.IsValid (RedshiftServiceAccountData s) where
    validator = P.mempty

instance P.HasRegion (RedshiftServiceAccountData s) (TF.Attr s P.Text) where
    region =
        P.lens (_region :: RedshiftServiceAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _region = a } :: RedshiftServiceAccountData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (RedshiftServiceAccountData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (RedshiftServiceAccountData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

-- | @aws_region@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/region.html terraform documentation>
-- for more information.
data RegionData s = RegionData'
    deriving (P.Show, P.Eq, P.Generic)

regionData
    :: P.DataSource (RegionData s)
regionData =
    TF.newDataSource "aws_region" TF.validator $
        RegionData'

instance TF.IsObject (RegionData s) where
    toObject _ = []

instance TF.IsValid (RegionData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedId (TF.Ref s' (RegionData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (RegionData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedEndpoint (TF.Ref s' (RegionData s)) (TF.Attr s P.Text) where
    computedEndpoint x = TF.compute (TF.refKey x) "endpoint"

instance s ~ s' => P.HasComputedName (TF.Ref s' (RegionData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

-- | @aws_route@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/route.html terraform documentation>
-- for more information.
data RouteData s = RouteData'
    { _routeTableId :: TF.Attr s P.Text
    -- ^ @route_table_id@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

routeData
    :: TF.Attr s P.Text -- ^ @route_table_id@ - 'P.routeTableId'
    -> P.DataSource (RouteData s)
routeData _routeTableId =
    TF.newDataSource "aws_route" TF.validator $
        RouteData'
            { _routeTableId = _routeTableId
            }

instance TF.IsObject (RouteData s) where
    toObject RouteData'{..} = P.catMaybes
        [ TF.assign "route_table_id" <$> TF.attribute _routeTableId
        ]

instance TF.IsValid (RouteData s) where
    validator = P.mempty

instance P.HasRouteTableId (RouteData s) (TF.Attr s P.Text) where
    routeTableId =
        P.lens (_routeTableId :: RouteData s -> TF.Attr s P.Text)
               (\s a -> s { _routeTableId = a } :: RouteData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedDestinationCidrBlock (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedDestinationCidrBlock x = TF.compute (TF.refKey x) "destination_cidr_block"

instance s ~ s' => P.HasComputedDestinationIpv6CidrBlock (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedDestinationIpv6CidrBlock x = TF.compute (TF.refKey x) "destination_ipv6_cidr_block"

instance s ~ s' => P.HasComputedEgressOnlyGatewayId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedEgressOnlyGatewayId x = TF.compute (TF.refKey x) "egress_only_gateway_id"

instance s ~ s' => P.HasComputedGatewayId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedGatewayId x = TF.compute (TF.refKey x) "gateway_id"

instance s ~ s' => P.HasComputedInstanceId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedInstanceId x = TF.compute (TF.refKey x) "instance_id"

instance s ~ s' => P.HasComputedNatGatewayId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedNatGatewayId x = TF.compute (TF.refKey x) "nat_gateway_id"

instance s ~ s' => P.HasComputedNetworkInterfaceId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedNetworkInterfaceId x = TF.compute (TF.refKey x) "network_interface_id"

instance s ~ s' => P.HasComputedVpcPeeringConnectionId (TF.Ref s' (RouteData s)) (TF.Attr s P.Text) where
    computedVpcPeeringConnectionId x = TF.compute (TF.refKey x) "vpc_peering_connection_id"

-- | @aws_route53_zone@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/route53_zone.html terraform documentation>
-- for more information.
data Route53ZoneData s = Route53ZoneData'
    { _privateZone :: TF.Attr s P.Bool
    -- ^ @private_zone@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

route53ZoneData
    :: P.DataSource (Route53ZoneData s)
route53ZoneData =
    TF.newDataSource "aws_route53_zone" TF.validator $
        Route53ZoneData'
            { _privateZone = TF.value P.False
            }

instance TF.IsObject (Route53ZoneData s) where
    toObject Route53ZoneData'{..} = P.catMaybes
        [ TF.assign "private_zone" <$> TF.attribute _privateZone
        ]

instance TF.IsValid (Route53ZoneData s) where
    validator = P.mempty

instance P.HasPrivateZone (Route53ZoneData s) (TF.Attr s P.Bool) where
    privateZone =
        P.lens (_privateZone :: Route53ZoneData s -> TF.Attr s P.Bool)
               (\s a -> s { _privateZone = a } :: Route53ZoneData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedCallerReference (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Text) where
    computedCallerReference x = TF.compute (TF.refKey x) "caller_reference"

instance s ~ s' => P.HasComputedComment (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Text) where
    computedComment x = TF.compute (TF.refKey x) "comment"

instance s ~ s' => P.HasComputedName (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedNameServers (TF.Ref s' (Route53ZoneData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNameServers x = TF.compute (TF.refKey x) "name_servers"

instance s ~ s' => P.HasComputedResourceRecordSetCount (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Integer) where
    computedResourceRecordSetCount x = TF.compute (TF.refKey x) "resource_record_set_count"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (Route53ZoneData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

instance s ~ s' => P.HasComputedZoneId (TF.Ref s' (Route53ZoneData s)) (TF.Attr s P.Text) where
    computedZoneId x = TF.compute (TF.refKey x) "zone_id"

-- | @aws_route_table@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/route_table.html terraform documentation>
-- for more information.
data RouteTableData s = RouteTableData'
    { _filter :: TF.Attr s [TF.Attr s (RouteTableFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

routeTableData
    :: P.DataSource (RouteTableData s)
routeTableData =
    TF.newDataSource "aws_route_table" TF.validator $
        RouteTableData'
            { _filter = TF.Nil
            }

instance TF.IsObject (RouteTableData s) where
    toObject RouteTableData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (RouteTableData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: RouteTableData s -> TF.Attr s [TF.Attr s (RouteTableFilter s)])
                  TF.validator

instance P.HasFilter (RouteTableData s) (TF.Attr s [TF.Attr s (RouteTableFilter s)]) where
    filter =
        P.lens (_filter :: RouteTableData s -> TF.Attr s [TF.Attr s (RouteTableFilter s)])
               (\s a -> s { _filter = a } :: RouteTableData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (RouteTableData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedAssociations (TF.Ref s' (RouteTableData s)) (TF.Attr s [TF.Attr s (RouteTableAssociations s)]) where
    computedAssociations x = TF.compute (TF.refKey x) "associations"

instance s ~ s' => P.HasComputedRouteTableId (TF.Ref s' (RouteTableData s)) (TF.Attr s P.Text) where
    computedRouteTableId x = TF.compute (TF.refKey x) "route_table_id"

instance s ~ s' => P.HasComputedRoutes (TF.Ref s' (RouteTableData s)) (TF.Attr s [TF.Attr s (RouteTableRoutes s)]) where
    computedRoutes x = TF.compute (TF.refKey x) "routes"

instance s ~ s' => P.HasComputedSubnetId (TF.Ref s' (RouteTableData s)) (TF.Attr s P.Text) where
    computedSubnetId x = TF.compute (TF.refKey x) "subnet_id"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (RouteTableData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (RouteTableData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

-- | @aws_route_tables@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/route_tables.html terraform documentation>
-- for more information.
data RouteTablesData s = RouteTablesData'
    { _filter :: TF.Attr s [TF.Attr s (RouteTablesFilter s)]
    -- ^ @filter@ - (Optional)
    --
    , _vpcId  :: TF.Attr s P.Text
    -- ^ @vpc_id@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

routeTablesData
    :: P.DataSource (RouteTablesData s)
routeTablesData =
    TF.newDataSource "aws_route_tables" TF.validator $
        RouteTablesData'
            { _filter = TF.Nil
            , _vpcId = TF.Nil
            }

instance TF.IsObject (RouteTablesData s) where
    toObject RouteTablesData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "vpc_id" <$> TF.attribute _vpcId
        ]

instance TF.IsValid (RouteTablesData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: RouteTablesData s -> TF.Attr s [TF.Attr s (RouteTablesFilter s)])
                  TF.validator

instance P.HasFilter (RouteTablesData s) (TF.Attr s [TF.Attr s (RouteTablesFilter s)]) where
    filter =
        P.lens (_filter :: RouteTablesData s -> TF.Attr s [TF.Attr s (RouteTablesFilter s)])
               (\s a -> s { _filter = a } :: RouteTablesData s)

instance P.HasVpcId (RouteTablesData s) (TF.Attr s P.Text) where
    vpcId =
        P.lens (_vpcId :: RouteTablesData s -> TF.Attr s P.Text)
               (\s a -> s { _vpcId = a } :: RouteTablesData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (RouteTablesData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedIds (TF.Ref s' (RouteTablesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "ids"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (RouteTablesData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @aws_s3_bucket@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/s3_bucket.html terraform documentation>
-- for more information.
data S3BucketData s = S3BucketData'
    { _bucket :: TF.Attr s P.Text
    -- ^ @bucket@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

s3BucketData
    :: TF.Attr s P.Text -- ^ @bucket@ - 'P.bucket'
    -> P.DataSource (S3BucketData s)
s3BucketData _bucket =
    TF.newDataSource "aws_s3_bucket" TF.validator $
        S3BucketData'
            { _bucket = _bucket
            }

instance TF.IsObject (S3BucketData s) where
    toObject S3BucketData'{..} = P.catMaybes
        [ TF.assign "bucket" <$> TF.attribute _bucket
        ]

instance TF.IsValid (S3BucketData s) where
    validator = P.mempty

instance P.HasBucket (S3BucketData s) (TF.Attr s P.Text) where
    bucket =
        P.lens (_bucket :: S3BucketData s -> TF.Attr s P.Text)
               (\s a -> s { _bucket = a } :: S3BucketData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedBucketDomainName (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedBucketDomainName x = TF.compute (TF.refKey x) "bucket_domain_name"

instance s ~ s' => P.HasComputedHostedZoneId (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedHostedZoneId x = TF.compute (TF.refKey x) "hosted_zone_id"

instance s ~ s' => P.HasComputedRegion (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedRegion x = TF.compute (TF.refKey x) "region"

instance s ~ s' => P.HasComputedWebsiteDomain (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedWebsiteDomain x = TF.compute (TF.refKey x) "website_domain"

instance s ~ s' => P.HasComputedWebsiteEndpoint (TF.Ref s' (S3BucketData s)) (TF.Attr s P.Text) where
    computedWebsiteEndpoint x = TF.compute (TF.refKey x) "website_endpoint"

-- | @aws_s3_bucket_object@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/s3_bucket_object.html terraform documentation>
-- for more information.
data S3BucketObjectData s = S3BucketObjectData'
    { _bucket :: TF.Attr s P.Text
    -- ^ @bucket@ - (Required)
    --
    , _key    :: TF.Attr s P.Text
    -- ^ @key@ - (Required)
    --
    , _range  :: TF.Attr s P.Text
    -- ^ @range@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

s3BucketObjectData
    :: TF.Attr s P.Text -- ^ @bucket@ - 'P.bucket'
    -> TF.Attr s P.Text -- ^ @key@ - 'P.key'
    -> P.DataSource (S3BucketObjectData s)
s3BucketObjectData _bucket _key =
    TF.newDataSource "aws_s3_bucket_object" TF.validator $
        S3BucketObjectData'
            { _bucket = _bucket
            , _key = _key
            , _range = TF.Nil
            }

instance TF.IsObject (S3BucketObjectData s) where
    toObject S3BucketObjectData'{..} = P.catMaybes
        [ TF.assign "bucket" <$> TF.attribute _bucket
        , TF.assign "key" <$> TF.attribute _key
        , TF.assign "range" <$> TF.attribute _range
        ]

instance TF.IsValid (S3BucketObjectData s) where
    validator = P.mempty

instance P.HasBucket (S3BucketObjectData s) (TF.Attr s P.Text) where
    bucket =
        P.lens (_bucket :: S3BucketObjectData s -> TF.Attr s P.Text)
               (\s a -> s { _bucket = a } :: S3BucketObjectData s)

instance P.HasKey (S3BucketObjectData s) (TF.Attr s P.Text) where
    key =
        P.lens (_key :: S3BucketObjectData s -> TF.Attr s P.Text)
               (\s a -> s { _key = a } :: S3BucketObjectData s)

instance P.HasRange (S3BucketObjectData s) (TF.Attr s P.Text) where
    range =
        P.lens (_range :: S3BucketObjectData s -> TF.Attr s P.Text)
               (\s a -> s { _range = a } :: S3BucketObjectData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedBody (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedBody x = TF.compute (TF.refKey x) "body"

instance s ~ s' => P.HasComputedCacheControl (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedCacheControl x = TF.compute (TF.refKey x) "cache_control"

instance s ~ s' => P.HasComputedContentDisposition (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedContentDisposition x = TF.compute (TF.refKey x) "content_disposition"

instance s ~ s' => P.HasComputedContentEncoding (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedContentEncoding x = TF.compute (TF.refKey x) "content_encoding"

instance s ~ s' => P.HasComputedContentLanguage (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedContentLanguage x = TF.compute (TF.refKey x) "content_language"

instance s ~ s' => P.HasComputedContentLength (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Integer) where
    computedContentLength x = TF.compute (TF.refKey x) "content_length"

instance s ~ s' => P.HasComputedContentType (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedContentType x = TF.compute (TF.refKey x) "content_type"

instance s ~ s' => P.HasComputedEtag (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedEtag x = TF.compute (TF.refKey x) "etag"

instance s ~ s' => P.HasComputedExpiration (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedExpiration x = TF.compute (TF.refKey x) "expiration"

instance s ~ s' => P.HasComputedExpires (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedExpires x = TF.compute (TF.refKey x) "expires"

instance s ~ s' => P.HasComputedLastModified (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedLastModified x = TF.compute (TF.refKey x) "last_modified"

instance s ~ s' => P.HasComputedMetadata (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedMetadata x = TF.compute (TF.refKey x) "metadata"

instance s ~ s' => P.HasComputedServerSideEncryption (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedServerSideEncryption x = TF.compute (TF.refKey x) "server_side_encryption"

instance s ~ s' => P.HasComputedSseKmsKeyId (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedSseKmsKeyId x = TF.compute (TF.refKey x) "sse_kms_key_id"

instance s ~ s' => P.HasComputedStorageClass (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedStorageClass x = TF.compute (TF.refKey x) "storage_class"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVersionId (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedVersionId x = TF.compute (TF.refKey x) "version_id"

instance s ~ s' => P.HasComputedWebsiteRedirectLocation (TF.Ref s' (S3BucketObjectData s)) (TF.Attr s P.Text) where
    computedWebsiteRedirectLocation x = TF.compute (TF.refKey x) "website_redirect_location"

-- | @aws_secretsmanager_secret@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/secretsmanager_secret.html terraform documentation>
-- for more information.
data SecretsmanagerSecretData s = SecretsmanagerSecretData'
    deriving (P.Show, P.Eq, P.Generic)

secretsmanagerSecretData
    :: P.DataSource (SecretsmanagerSecretData s)
secretsmanagerSecretData =
    TF.newDataSource "aws_secretsmanager_secret" TF.validator $
        SecretsmanagerSecretData'

instance TF.IsObject (SecretsmanagerSecretData s) where
    toObject _ = []

instance TF.IsValid (SecretsmanagerSecretData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedId (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "kms_key_id"

instance s ~ s' => P.HasComputedName (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedRotationEnabled (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Bool) where
    computedRotationEnabled x = TF.compute (TF.refKey x) "rotation_enabled"

instance s ~ s' => P.HasComputedRotationLambdaArn (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s P.Text) where
    computedRotationLambdaArn x = TF.compute (TF.refKey x) "rotation_lambda_arn"

instance s ~ s' => P.HasComputedRotationRules (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s [TF.Attr s (SecretsmanagerSecretRotationRules s)]) where
    computedRotationRules x = TF.compute (TF.refKey x) "rotation_rules"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (SecretsmanagerSecretData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @aws_secretsmanager_secret_version@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/secretsmanager_secret_version.html terraform documentation>
-- for more information.
data SecretsmanagerSecretVersionData s = SecretsmanagerSecretVersionData'
    { _secretId     :: TF.Attr s P.Text
    -- ^ @secret_id@ - (Required, Forces New)
    --
    , _versionStage :: TF.Attr s P.Text
    -- ^ @version_stage@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

secretsmanagerSecretVersionData
    :: TF.Attr s P.Text -- ^ @secret_id@ - 'P.secretId'
    -> P.DataSource (SecretsmanagerSecretVersionData s)
secretsmanagerSecretVersionData _secretId =
    TF.newDataSource "aws_secretsmanager_secret_version" TF.validator $
        SecretsmanagerSecretVersionData'
            { _secretId = _secretId
            , _versionStage = TF.value "AWSCURRENT"
            }

instance TF.IsObject (SecretsmanagerSecretVersionData s) where
    toObject SecretsmanagerSecretVersionData'{..} = P.catMaybes
        [ TF.assign "secret_id" <$> TF.attribute _secretId
        , TF.assign "version_stage" <$> TF.attribute _versionStage
        ]

instance TF.IsValid (SecretsmanagerSecretVersionData s) where
    validator = P.mempty

instance P.HasSecretId (SecretsmanagerSecretVersionData s) (TF.Attr s P.Text) where
    secretId =
        P.lens (_secretId :: SecretsmanagerSecretVersionData s -> TF.Attr s P.Text)
               (\s a -> s { _secretId = a } :: SecretsmanagerSecretVersionData s)

instance P.HasVersionStage (SecretsmanagerSecretVersionData s) (TF.Attr s P.Text) where
    versionStage =
        P.lens (_versionStage :: SecretsmanagerSecretVersionData s -> TF.Attr s P.Text)
               (\s a -> s { _versionStage = a } :: SecretsmanagerSecretVersionData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (SecretsmanagerSecretVersionData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedSecretString (TF.Ref s' (SecretsmanagerSecretVersionData s)) (TF.Attr s P.Text) where
    computedSecretString x = TF.compute (TF.refKey x) "secret_string"

instance s ~ s' => P.HasComputedVersionId (TF.Ref s' (SecretsmanagerSecretVersionData s)) (TF.Attr s P.Text) where
    computedVersionId x = TF.compute (TF.refKey x) "version_id"

instance s ~ s' => P.HasComputedVersionStages (TF.Ref s' (SecretsmanagerSecretVersionData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVersionStages x = TF.compute (TF.refKey x) "version_stages"

-- | @aws_security_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/security_group.html terraform documentation>
-- for more information.
data SecurityGroupData s = SecurityGroupData'
    { _filter :: TF.Attr s [TF.Attr s (SecurityGroupFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

securityGroupData
    :: P.DataSource (SecurityGroupData s)
securityGroupData =
    TF.newDataSource "aws_security_group" TF.validator $
        SecurityGroupData'
            { _filter = TF.Nil
            }

instance TF.IsObject (SecurityGroupData s) where
    toObject SecurityGroupData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (SecurityGroupData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: SecurityGroupData s -> TF.Attr s [TF.Attr s (SecurityGroupFilter s)])
                  TF.validator

instance P.HasFilter (SecurityGroupData s) (TF.Attr s [TF.Attr s (SecurityGroupFilter s)]) where
    filter =
        P.lens (_filter :: SecurityGroupData s -> TF.Attr s [TF.Attr s (SecurityGroupFilter s)])
               (\s a -> s { _filter = a } :: SecurityGroupData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (SecurityGroupData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (SecurityGroupData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedId (TF.Ref s' (SecurityGroupData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedName (TF.Ref s' (SecurityGroupData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (SecurityGroupData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (SecurityGroupData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

-- | @aws_security_groups@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/security_groups.html terraform documentation>
-- for more information.
data SecurityGroupsData s = SecurityGroupsData'
    { _filter :: TF.Attr s [TF.Attr s (SecurityGroupsFilter s)]
    -- ^ @filter@ - (Optional, Forces New)
    --
    } deriving (P.Show, P.Eq, P.Generic)

securityGroupsData
    :: P.DataSource (SecurityGroupsData s)
securityGroupsData =
    TF.newDataSource "aws_security_groups" TF.validator $
        SecurityGroupsData'
            { _filter = TF.Nil
            }

instance TF.IsObject (SecurityGroupsData s) where
    toObject SecurityGroupsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (SecurityGroupsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: SecurityGroupsData s -> TF.Attr s [TF.Attr s (SecurityGroupsFilter s)])
                  TF.validator

instance P.HasFilter (SecurityGroupsData s) (TF.Attr s [TF.Attr s (SecurityGroupsFilter s)]) where
    filter =
        P.lens (_filter :: SecurityGroupsData s -> TF.Attr s [TF.Attr s (SecurityGroupsFilter s)])
               (\s a -> s { _filter = a } :: SecurityGroupsData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (SecurityGroupsData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedIds (TF.Ref s' (SecurityGroupsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "ids"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (SecurityGroupsData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcIds (TF.Ref s' (SecurityGroupsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVpcIds x = TF.compute (TF.refKey x) "vpc_ids"

-- | @aws_sns_topic@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/sns_topic.html terraform documentation>
-- for more information.
data SnsTopicData s = SnsTopicData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

snsTopicData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> P.DataSource (SnsTopicData s)
snsTopicData _name =
    TF.newDataSource "aws_sns_topic" TF.validator $
        SnsTopicData'
            { _name = _name
            }

instance TF.IsObject (SnsTopicData s) where
    toObject SnsTopicData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (SnsTopicData s) where
    validator = P.mempty

instance P.HasName (SnsTopicData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SnsTopicData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: SnsTopicData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (SnsTopicData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (SnsTopicData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

-- | @aws_sqs_queue@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/sqs_queue.html terraform documentation>
-- for more information.
data SqsQueueData s = SqsQueueData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

sqsQueueData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> P.DataSource (SqsQueueData s)
sqsQueueData _name =
    TF.newDataSource "aws_sqs_queue" TF.validator $
        SqsQueueData'
            { _name = _name
            }

instance TF.IsObject (SqsQueueData s) where
    toObject SqsQueueData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (SqsQueueData s) where
    validator = P.mempty

instance P.HasName (SqsQueueData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SqsQueueData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: SqsQueueData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (SqsQueueData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (SqsQueueData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedUrl (TF.Ref s' (SqsQueueData s)) (TF.Attr s P.Text) where
    computedUrl x = TF.compute (TF.refKey x) "url"

-- | @aws_ssm_parameter@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/ssm_parameter.html terraform documentation>
-- for more information.
data SsmParameterData s = SsmParameterData'
    { _name           :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _withDecryption :: TF.Attr s P.Bool
    -- ^ @with_decryption@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ssmParameterData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> P.DataSource (SsmParameterData s)
ssmParameterData _name =
    TF.newDataSource "aws_ssm_parameter" TF.validator $
        SsmParameterData'
            { _name = _name
            , _withDecryption = TF.value P.True
            }

instance TF.IsObject (SsmParameterData s) where
    toObject SsmParameterData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "with_decryption" <$> TF.attribute _withDecryption
        ]

instance TF.IsValid (SsmParameterData s) where
    validator = P.mempty

instance P.HasName (SsmParameterData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: SsmParameterData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: SsmParameterData s)

instance P.HasWithDecryption (SsmParameterData s) (TF.Attr s P.Bool) where
    withDecryption =
        P.lens (_withDecryption :: SsmParameterData s -> TF.Attr s P.Bool)
               (\s a -> s { _withDecryption = a } :: SsmParameterData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (SsmParameterData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (SsmParameterData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedType (TF.Ref s' (SsmParameterData s)) (TF.Attr s P.Text) where
    computedType x = TF.compute (TF.refKey x) "type"

instance s ~ s' => P.HasComputedValue (TF.Ref s' (SsmParameterData s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "value"

-- | @aws_storagegateway_local_disk@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/storagegateway_local_disk.html terraform documentation>
-- for more information.
data StoragegatewayLocalDiskData s = StoragegatewayLocalDiskData'
    { _diskPath   :: TF.Attr s P.Text
    -- ^ @disk_path@ - (Required)
    --
    , _gatewayArn :: TF.Attr s P.Text
    -- ^ @gateway_arn@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

storagegatewayLocalDiskData
    :: TF.Attr s P.Text -- ^ @disk_path@ - 'P.diskPath'
    -> TF.Attr s P.Text -- ^ @gateway_arn@ - 'P.gatewayArn'
    -> P.DataSource (StoragegatewayLocalDiskData s)
storagegatewayLocalDiskData _diskPath _gatewayArn =
    TF.newDataSource "aws_storagegateway_local_disk" TF.validator $
        StoragegatewayLocalDiskData'
            { _diskPath = _diskPath
            , _gatewayArn = _gatewayArn
            }

instance TF.IsObject (StoragegatewayLocalDiskData s) where
    toObject StoragegatewayLocalDiskData'{..} = P.catMaybes
        [ TF.assign "disk_path" <$> TF.attribute _diskPath
        , TF.assign "gateway_arn" <$> TF.attribute _gatewayArn
        ]

instance TF.IsValid (StoragegatewayLocalDiskData s) where
    validator = P.mempty

instance P.HasDiskPath (StoragegatewayLocalDiskData s) (TF.Attr s P.Text) where
    diskPath =
        P.lens (_diskPath :: StoragegatewayLocalDiskData s -> TF.Attr s P.Text)
               (\s a -> s { _diskPath = a } :: StoragegatewayLocalDiskData s)

instance P.HasGatewayArn (StoragegatewayLocalDiskData s) (TF.Attr s P.Text) where
    gatewayArn =
        P.lens (_gatewayArn :: StoragegatewayLocalDiskData s -> TF.Attr s P.Text)
               (\s a -> s { _gatewayArn = a } :: StoragegatewayLocalDiskData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (StoragegatewayLocalDiskData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedDiskId (TF.Ref s' (StoragegatewayLocalDiskData s)) (TF.Attr s P.Text) where
    computedDiskId x = TF.compute (TF.refKey x) "disk_id"

-- | @aws_subnet@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/subnet.html terraform documentation>
-- for more information.
data SubnetData s = SubnetData'
    { _filter :: TF.Attr s [TF.Attr s (SubnetFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

subnetData
    :: P.DataSource (SubnetData s)
subnetData =
    TF.newDataSource "aws_subnet" TF.validator $
        SubnetData'
            { _filter = TF.Nil
            }

instance TF.IsObject (SubnetData s) where
    toObject SubnetData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (SubnetData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: SubnetData s -> TF.Attr s [TF.Attr s (SubnetFilter s)])
                  TF.validator

instance P.HasFilter (SubnetData s) (TF.Attr s [TF.Attr s (SubnetFilter s)]) where
    filter =
        P.lens (_filter :: SubnetData s -> TF.Attr s [TF.Attr s (SubnetFilter s)])
               (\s a -> s { _filter = a } :: SubnetData s)

instance s ~ s' => P.HasComputedAssignIpv6AddressOnCreation (TF.Ref s' (SubnetData s)) (TF.Attr s P.Bool) where
    computedAssignIpv6AddressOnCreation x = TF.compute (TF.refKey x) "assign_ipv6_address_on_creation"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (SubnetData s)) (TF.Attr s P.Zone) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "availability_zone"

instance s ~ s' => P.HasComputedCidrBlock (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedCidrBlock x = TF.compute (TF.refKey x) "cidr_block"

instance s ~ s' => P.HasComputedDefaultForAz (TF.Ref s' (SubnetData s)) (TF.Attr s P.Bool) where
    computedDefaultForAz x = TF.compute (TF.refKey x) "default_for_az"

instance s ~ s' => P.HasComputedId (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedIpv6CidrBlock (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedIpv6CidrBlock x = TF.compute (TF.refKey x) "ipv6_cidr_block"

instance s ~ s' => P.HasComputedIpv6CidrBlockAssociationId (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedIpv6CidrBlockAssociationId x = TF.compute (TF.refKey x) "ipv6_cidr_block_association_id"

instance s ~ s' => P.HasComputedMapPublicIpOnLaunch (TF.Ref s' (SubnetData s)) (TF.Attr s P.Bool) where
    computedMapPublicIpOnLaunch x = TF.compute (TF.refKey x) "map_public_ip_on_launch"

instance s ~ s' => P.HasComputedState (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "state"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (SubnetData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (SubnetData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

-- | @aws_subnet_ids@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/subnet_ids.html terraform documentation>
-- for more information.
data SubnetIdsData s = SubnetIdsData'
    { _filter :: TF.Attr s [TF.Attr s (SubnetIdsFilter s)]
    -- ^ @filter@ - (Optional)
    --
    , _vpcId  :: TF.Attr s P.Text
    -- ^ @vpc_id@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

subnetIdsData
    :: TF.Attr s P.Text -- ^ @vpc_id@ - 'P.vpcId'
    -> P.DataSource (SubnetIdsData s)
subnetIdsData _vpcId =
    TF.newDataSource "aws_subnet_ids" TF.validator $
        SubnetIdsData'
            { _filter = TF.Nil
            , _vpcId = _vpcId
            }

instance TF.IsObject (SubnetIdsData s) where
    toObject SubnetIdsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "vpc_id" <$> TF.attribute _vpcId
        ]

instance TF.IsValid (SubnetIdsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: SubnetIdsData s -> TF.Attr s [TF.Attr s (SubnetIdsFilter s)])
                  TF.validator

instance P.HasFilter (SubnetIdsData s) (TF.Attr s [TF.Attr s (SubnetIdsFilter s)]) where
    filter =
        P.lens (_filter :: SubnetIdsData s -> TF.Attr s [TF.Attr s (SubnetIdsFilter s)])
               (\s a -> s { _filter = a } :: SubnetIdsData s)

instance P.HasVpcId (SubnetIdsData s) (TF.Attr s P.Text) where
    vpcId =
        P.lens (_vpcId :: SubnetIdsData s -> TF.Attr s P.Text)
               (\s a -> s { _vpcId = a } :: SubnetIdsData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (SubnetIdsData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedIds (TF.Ref s' (SubnetIdsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "ids"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (SubnetIdsData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @aws_vpc@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpc.html terraform documentation>
-- for more information.
data VpcData s = VpcData'
    { _filter :: TF.Attr s [TF.Attr s (VpcFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

vpcData
    :: P.DataSource (VpcData s)
vpcData =
    TF.newDataSource "aws_vpc" TF.validator $
        VpcData'
            { _filter = TF.Nil
            }

instance TF.IsObject (VpcData s) where
    toObject VpcData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (VpcData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: VpcData s -> TF.Attr s [TF.Attr s (VpcFilter s)])
                  TF.validator

instance P.HasFilter (VpcData s) (TF.Attr s [TF.Attr s (VpcFilter s)]) where
    filter =
        P.lens (_filter :: VpcData s -> TF.Attr s [TF.Attr s (VpcFilter s)])
               (\s a -> s { _filter = a } :: VpcData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "arn"

instance s ~ s' => P.HasComputedCidrBlock (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedCidrBlock x = TF.compute (TF.refKey x) "cidr_block"

instance s ~ s' => P.HasComputedCidrBlockAssociations (TF.Ref s' (VpcData s)) (TF.Attr s [TF.Attr s (VpcCidrBlockAssociations s)]) where
    computedCidrBlockAssociations x = TF.compute (TF.refKey x) "cidr_block_associations"

instance s ~ s' => P.HasComputedDefault (TF.Ref s' (VpcData s)) (TF.Attr s P.Bool) where
    computedDefault x = TF.compute (TF.refKey x) "default"

instance s ~ s' => P.HasComputedDhcpOptionsId (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedDhcpOptionsId x = TF.compute (TF.refKey x) "dhcp_options_id"

instance s ~ s' => P.HasComputedEnableDnsHostnames (TF.Ref s' (VpcData s)) (TF.Attr s P.Bool) where
    computedEnableDnsHostnames x = TF.compute (TF.refKey x) "enable_dns_hostnames"

instance s ~ s' => P.HasComputedEnableDnsSupport (TF.Ref s' (VpcData s)) (TF.Attr s P.Bool) where
    computedEnableDnsSupport x = TF.compute (TF.refKey x) "enable_dns_support"

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedInstanceTenancy (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedInstanceTenancy x = TF.compute (TF.refKey x) "instance_tenancy"

instance s ~ s' => P.HasComputedIpv6AssociationId (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedIpv6AssociationId x = TF.compute (TF.refKey x) "ipv6_association_id"

instance s ~ s' => P.HasComputedIpv6CidrBlock (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedIpv6CidrBlock x = TF.compute (TF.refKey x) "ipv6_cidr_block"

instance s ~ s' => P.HasComputedState (TF.Ref s' (VpcData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "state"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (VpcData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @aws_vpc_dhcp_options@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpc_dhcp_options.html terraform documentation>
-- for more information.
data VpcDhcpOptionsData s = VpcDhcpOptionsData'
    { _filter :: TF.Attr s [TF.Attr s (VpcDhcpOptionsFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

vpcDhcpOptionsData
    :: P.DataSource (VpcDhcpOptionsData s)
vpcDhcpOptionsData =
    TF.newDataSource "aws_vpc_dhcp_options" TF.validator $
        VpcDhcpOptionsData'
            { _filter = TF.Nil
            }

instance TF.IsObject (VpcDhcpOptionsData s) where
    toObject VpcDhcpOptionsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (VpcDhcpOptionsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: VpcDhcpOptionsData s -> TF.Attr s [TF.Attr s (VpcDhcpOptionsFilter s)])
                  TF.validator

instance P.HasFilter (VpcDhcpOptionsData s) (TF.Attr s [TF.Attr s (VpcDhcpOptionsFilter s)]) where
    filter =
        P.lens (_filter :: VpcDhcpOptionsData s -> TF.Attr s [TF.Attr s (VpcDhcpOptionsFilter s)])
               (\s a -> s { _filter = a } :: VpcDhcpOptionsData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedDhcpOptionsId (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s P.Text) where
    computedDhcpOptionsId x = TF.compute (TF.refKey x) "dhcp_options_id"

instance s ~ s' => P.HasComputedDomainName (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s P.Text) where
    computedDomainName x = TF.compute (TF.refKey x) "domain_name"

instance s ~ s' => P.HasComputedDomainNameServers (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedDomainNameServers x = TF.compute (TF.refKey x) "domain_name_servers"

instance s ~ s' => P.HasComputedNetbiosNameServers (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNetbiosNameServers x = TF.compute (TF.refKey x) "netbios_name_servers"

instance s ~ s' => P.HasComputedNetbiosNodeType (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s P.Text) where
    computedNetbiosNodeType x = TF.compute (TF.refKey x) "netbios_node_type"

instance s ~ s' => P.HasComputedNtpServers (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNtpServers x = TF.compute (TF.refKey x) "ntp_servers"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (VpcDhcpOptionsData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @aws_vpc_endpoint@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpc_endpoint.html terraform documentation>
-- for more information.
data VpcEndpointData s = VpcEndpointData'
    deriving (P.Show, P.Eq, P.Generic)

vpcEndpointData
    :: P.DataSource (VpcEndpointData s)
vpcEndpointData =
    TF.newDataSource "aws_vpc_endpoint" TF.validator $
        VpcEndpointData'

instance TF.IsObject (VpcEndpointData s) where
    toObject _ = []

instance TF.IsValid (VpcEndpointData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedCidrBlocks (TF.Ref s' (VpcEndpointData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedCidrBlocks x = TF.compute (TF.refKey x) "cidr_blocks"

instance s ~ s' => P.HasComputedDnsEntry (TF.Ref s' (VpcEndpointData s)) (TF.Attr s [TF.Attr s (VpcEndpointDnsEntry s)]) where
    computedDnsEntry x = TF.compute (TF.refKey x) "dns_entry"

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedNetworkInterfaceIds (TF.Ref s' (VpcEndpointData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNetworkInterfaceIds x = TF.compute (TF.refKey x) "network_interface_ids"

instance s ~ s' => P.HasComputedPolicy (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Document) where
    computedPolicy x = TF.compute (TF.refKey x) "policy"

instance s ~ s' => P.HasComputedPrefixListId (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Text) where
    computedPrefixListId x = TF.compute (TF.refKey x) "prefix_list_id"

instance s ~ s' => P.HasComputedPrivateDnsEnabled (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Bool) where
    computedPrivateDnsEnabled x = TF.compute (TF.refKey x) "private_dns_enabled"

instance s ~ s' => P.HasComputedRouteTableIds (TF.Ref s' (VpcEndpointData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedRouteTableIds x = TF.compute (TF.refKey x) "route_table_ids"

instance s ~ s' => P.HasComputedSecurityGroupIds (TF.Ref s' (VpcEndpointData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroupIds x = TF.compute (TF.refKey x) "security_group_ids"

instance s ~ s' => P.HasComputedServiceName (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Text) where
    computedServiceName x = TF.compute (TF.refKey x) "service_name"

instance s ~ s' => P.HasComputedState (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "state"

instance s ~ s' => P.HasComputedSubnetIds (TF.Ref s' (VpcEndpointData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSubnetIds x = TF.compute (TF.refKey x) "subnet_ids"

instance s ~ s' => P.HasComputedVpcEndpointType (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Text) where
    computedVpcEndpointType x = TF.compute (TF.refKey x) "vpc_endpoint_type"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (VpcEndpointData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

-- | @aws_vpc_endpoint_service@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpc_endpoint_service.html terraform documentation>
-- for more information.
data VpcEndpointServiceData s = VpcEndpointServiceData'
    { _service :: TF.Attr s P.Text
    -- ^ @service@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

vpcEndpointServiceData
    :: P.DataSource (VpcEndpointServiceData s)
vpcEndpointServiceData =
    TF.newDataSource "aws_vpc_endpoint_service" TF.validator $
        VpcEndpointServiceData'
            { _service = TF.Nil
            }

instance TF.IsObject (VpcEndpointServiceData s) where
    toObject VpcEndpointServiceData'{..} = P.catMaybes
        [ TF.assign "service" <$> TF.attribute _service
        ]

instance TF.IsValid (VpcEndpointServiceData s) where
    validator = P.mempty

instance P.HasService (VpcEndpointServiceData s) (TF.Attr s P.Text) where
    service =
        P.lens (_service :: VpcEndpointServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _service = a } :: VpcEndpointServiceData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedAcceptanceRequired (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Bool) where
    computedAcceptanceRequired x = TF.compute (TF.refKey x) "acceptance_required"

instance s ~ s' => P.HasComputedAvailabilityZones (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAvailabilityZones x = TF.compute (TF.refKey x) "availability_zones"

instance s ~ s' => P.HasComputedBaseEndpointDnsNames (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedBaseEndpointDnsNames x = TF.compute (TF.refKey x) "base_endpoint_dns_names"

instance s ~ s' => P.HasComputedOwner (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Text) where
    computedOwner x = TF.compute (TF.refKey x) "owner"

instance s ~ s' => P.HasComputedPrivateDnsName (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Text) where
    computedPrivateDnsName x = TF.compute (TF.refKey x) "private_dns_name"

instance s ~ s' => P.HasComputedServiceName (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Text) where
    computedServiceName x = TF.compute (TF.refKey x) "service_name"

instance s ~ s' => P.HasComputedServiceType (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Text) where
    computedServiceType x = TF.compute (TF.refKey x) "service_type"

instance s ~ s' => P.HasComputedVpcEndpointPolicySupported (TF.Ref s' (VpcEndpointServiceData s)) (TF.Attr s P.Bool) where
    computedVpcEndpointPolicySupported x = TF.compute (TF.refKey x) "vpc_endpoint_policy_supported"

-- | @aws_vpc_peering_connection@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpc_peering_connection.html terraform documentation>
-- for more information.
data VpcPeeringConnectionData s = VpcPeeringConnectionData'
    { _filter :: TF.Attr s [TF.Attr s (VpcPeeringConnectionFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

vpcPeeringConnectionData
    :: P.DataSource (VpcPeeringConnectionData s)
vpcPeeringConnectionData =
    TF.newDataSource "aws_vpc_peering_connection" TF.validator $
        VpcPeeringConnectionData'
            { _filter = TF.Nil
            }

instance TF.IsObject (VpcPeeringConnectionData s) where
    toObject VpcPeeringConnectionData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (VpcPeeringConnectionData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: VpcPeeringConnectionData s -> TF.Attr s [TF.Attr s (VpcPeeringConnectionFilter s)])
                  TF.validator

instance P.HasFilter (VpcPeeringConnectionData s) (TF.Attr s [TF.Attr s (VpcPeeringConnectionFilter s)]) where
    filter =
        P.lens (_filter :: VpcPeeringConnectionData s -> TF.Attr s [TF.Attr s (VpcPeeringConnectionFilter s)])
               (\s a -> s { _filter = a } :: VpcPeeringConnectionData s)

instance s ~ s' => P.HasComputedAccepter (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Bool))) where
    computedAccepter x = TF.compute (TF.refKey x) "accepter"

instance s ~ s' => P.HasComputedCidrBlock (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedCidrBlock x = TF.compute (TF.refKey x) "cidr_block"

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedOwnerId (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedOwnerId x = TF.compute (TF.refKey x) "owner_id"

instance s ~ s' => P.HasComputedPeerCidrBlock (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedPeerCidrBlock x = TF.compute (TF.refKey x) "peer_cidr_block"

instance s ~ s' => P.HasComputedPeerOwnerId (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedPeerOwnerId x = TF.compute (TF.refKey x) "peer_owner_id"

instance s ~ s' => P.HasComputedPeerRegion (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedPeerRegion x = TF.compute (TF.refKey x) "peer_region"

instance s ~ s' => P.HasComputedPeerVpcId (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedPeerVpcId x = TF.compute (TF.refKey x) "peer_vpc_id"

instance s ~ s' => P.HasComputedRegion (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedRegion x = TF.compute (TF.refKey x) "region"

instance s ~ s' => P.HasComputedRequester (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Bool))) where
    computedRequester x = TF.compute (TF.refKey x) "requester"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "status"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (VpcPeeringConnectionData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "vpc_id"

-- | @aws_vpcs@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpcs.html terraform documentation>
-- for more information.
data VpcsData s = VpcsData'
    { _filter :: TF.Attr s [TF.Attr s (VpcsFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

vpcsData
    :: P.DataSource (VpcsData s)
vpcsData =
    TF.newDataSource "aws_vpcs" TF.validator $
        VpcsData'
            { _filter = TF.Nil
            }

instance TF.IsObject (VpcsData s) where
    toObject VpcsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (VpcsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: VpcsData s -> TF.Attr s [TF.Attr s (VpcsFilter s)])
                  TF.validator

instance P.HasFilter (VpcsData s) (TF.Attr s [TF.Attr s (VpcsFilter s)]) where
    filter =
        P.lens (_filter :: VpcsData s -> TF.Attr s [TF.Attr s (VpcsFilter s)])
               (\s a -> s { _filter = a } :: VpcsData s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpcsData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedIds (TF.Ref s' (VpcsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "ids"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (VpcsData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @aws_vpn_gateway@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/aws/d/vpn_gateway.html terraform documentation>
-- for more information.
data VpnGatewayData s = VpnGatewayData'
    { _filter :: TF.Attr s [TF.Attr s (VpnGatewayFilter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

vpnGatewayData
    :: P.DataSource (VpnGatewayData s)
vpnGatewayData =
    TF.newDataSource "aws_vpn_gateway" TF.validator $
        VpnGatewayData'
            { _filter = TF.Nil
            }

instance TF.IsObject (VpnGatewayData s) where
    toObject VpnGatewayData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (VpnGatewayData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: VpnGatewayData s -> TF.Attr s [TF.Attr s (VpnGatewayFilter s)])
                  TF.validator

instance P.HasFilter (VpnGatewayData s) (TF.Attr s [TF.Attr s (VpnGatewayFilter s)]) where
    filter =
        P.lens (_filter :: VpnGatewayData s -> TF.Attr s [TF.Attr s (VpnGatewayFilter s)])
               (\s a -> s { _filter = a } :: VpnGatewayData s)

instance s ~ s' => P.HasComputedAmazonSideAsn (TF.Ref s' (VpnGatewayData s)) (TF.Attr s P.Text) where
    computedAmazonSideAsn x = TF.compute (TF.refKey x) "amazon_side_asn"

instance s ~ s' => P.HasComputedAttachedVpcId (TF.Ref s' (VpnGatewayData s)) (TF.Attr s P.Text) where
    computedAttachedVpcId x = TF.compute (TF.refKey x) "attached_vpc_id"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (VpnGatewayData s)) (TF.Attr s P.Zone) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "availability_zone"

instance s ~ s' => P.HasComputedId (TF.Ref s' (VpnGatewayData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedState (TF.Ref s' (VpnGatewayData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "state"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (VpnGatewayData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "tags"
