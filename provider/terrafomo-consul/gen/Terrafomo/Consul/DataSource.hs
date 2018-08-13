-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Consul.DataSource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Consul.DataSource
    (
    -- * DataSource Datatypes
    -- ** consul_agent_config
      AgentConfigData (..)
    , agentConfigData

    -- ** consul_agent_self
    , AgentSelfData (..)
    , agentSelfData

    -- ** consul_catalog_nodes
    , CatalogNodesData (..)
    , catalogNodesData

    -- ** consul_catalog_service
    , CatalogServiceData (..)
    , catalogServiceData

    -- ** consul_catalog_services
    , CatalogServicesData (..)
    , catalogServicesData

    -- ** consul_key_prefix
    , KeyPrefixData (..)
    , keyPrefixData

    -- ** consul_keys
    , KeysData (..)
    , keysData

    -- ** consul_nodes
    , NodesData (..)
    , nodesData

    -- ** consul_service
    , ServiceData (..)
    , serviceData

    -- ** consul_services
    , ServicesData (..)
    , servicesData

    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (($))

import Terrafomo.Consul.Settings

import qualified Data.Hashable             as P
import qualified Data.HashMap.Strict       as P
import qualified Data.List.NonEmpty        as P
import qualified Data.Text                 as P
import qualified GHC.Generics              as P
import qualified Lens.Micro                as P
import qualified Prelude                   as P
import qualified Terrafomo.Attribute       as TF
import qualified Terrafomo.Consul.Lens     as P
import qualified Terrafomo.Consul.Provider as P
import qualified Terrafomo.Consul.Types    as P
import qualified Terrafomo.HCL             as TF
import qualified Terrafomo.Name            as TF
import qualified Terrafomo.Schema          as TF

-- | @consul_agent_config@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_agent_config terraform documentation>
-- for more information.
data AgentConfigData s = AgentConfigData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (AgentConfigData s) where
    toObject _ = []

agentConfigData
    :: TF.DataSource P.Provider (AgentConfigData s)
agentConfigData =
    TF.newDataSource "consul_agent_config" $
        AgentConfigData'

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (AgentConfigData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedNodeId (TF.Ref s' (AgentConfigData s)) (TF.Attr s P.Text) where
    computedNodeId x = TF.compute (TF.refKey x) "_computedNodeId"

instance s ~ s' => P.HasComputedNodeName (TF.Ref s' (AgentConfigData s)) (TF.Attr s P.Text) where
    computedNodeName x = TF.compute (TF.refKey x) "_computedNodeName"

instance s ~ s' => P.HasComputedRevision (TF.Ref s' (AgentConfigData s)) (TF.Attr s P.Text) where
    computedRevision x = TF.compute (TF.refKey x) "_computedRevision"

instance s ~ s' => P.HasComputedServer (TF.Ref s' (AgentConfigData s)) (TF.Attr s P.Bool) where
    computedServer x = TF.compute (TF.refKey x) "_computedServer"

instance s ~ s' => P.HasComputedVersion (TF.Ref s' (AgentConfigData s)) (TF.Attr s P.Text) where
    computedVersion x = TF.compute (TF.refKey x) "_computedVersion"

-- | @consul_agent_self@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_agent_self terraform documentation>
-- for more information.
data AgentSelfData s = AgentSelfData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (AgentSelfData s) where
    toObject _ = []

agentSelfData
    :: TF.DataSource P.Provider (AgentSelfData s)
agentSelfData =
    TF.newDataSource "consul_agent_self" $
        AgentSelfData'

instance s ~ s' => P.HasComputedAclDatacenter (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAclDatacenter x = TF.compute (TF.refKey x) "_computedAclDatacenter"

instance s ~ s' => P.HasComputedAclDefaultPolicy (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAclDefaultPolicy x = TF.compute (TF.refKey x) "_computedAclDefaultPolicy"

instance s ~ s' => P.HasComputedAclDisabledTtl (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAclDisabledTtl x = TF.compute (TF.refKey x) "_computedAclDisabledTtl"

instance s ~ s' => P.HasComputedAclDownPolicy (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAclDownPolicy x = TF.compute (TF.refKey x) "_computedAclDownPolicy"

instance s ~ s' => P.HasComputedAclEnforce08Semantics (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedAclEnforce08Semantics x = TF.compute (TF.refKey x) "_computedAclEnforce08Semantics"

instance s ~ s' => P.HasComputedAclTtl (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAclTtl x = TF.compute (TF.refKey x) "_computedAclTtl"

instance s ~ s' => P.HasComputedAddresses (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (Addresses s))) where
    computedAddresses x = TF.compute (TF.refKey x) "_computedAddresses"

instance s ~ s' => P.HasComputedAdvertiseAddr (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAdvertiseAddr x = TF.compute (TF.refKey x) "_computedAdvertiseAddr"

instance s ~ s' => P.HasComputedAdvertiseAddrWan (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedAdvertiseAddrWan x = TF.compute (TF.refKey x) "_computedAdvertiseAddrWan"

instance s ~ s' => P.HasComputedAdvertiseAddrs (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (AdvertiseAddrs s))) where
    computedAdvertiseAddrs x = TF.compute (TF.refKey x) "_computedAdvertiseAddrs"

instance s ~ s' => P.HasComputedAtlasJoin (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedAtlasJoin x = TF.compute (TF.refKey x) "_computedAtlasJoin"

instance s ~ s' => P.HasComputedBindAddr (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedBindAddr x = TF.compute (TF.refKey x) "_computedBindAddr"

instance s ~ s' => P.HasComputedBootstrapExpect (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Integer) where
    computedBootstrapExpect x = TF.compute (TF.refKey x) "_computedBootstrapExpect"

instance s ~ s' => P.HasComputedBootstrapMode (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedBootstrapMode x = TF.compute (TF.refKey x) "_computedBootstrapMode"

instance s ~ s' => P.HasComputedCheckDeregisterIntervalMin (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedCheckDeregisterIntervalMin x = TF.compute (TF.refKey x) "_computedCheckDeregisterIntervalMin"

instance s ~ s' => P.HasComputedCheckReapInterval (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedCheckReapInterval x = TF.compute (TF.refKey x) "_computedCheckReapInterval"

instance s ~ s' => P.HasComputedCheckUpdateInterval (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedCheckUpdateInterval x = TF.compute (TF.refKey x) "_computedCheckUpdateInterval"

instance s ~ s' => P.HasComputedClientAddr (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedClientAddr x = TF.compute (TF.refKey x) "_computedClientAddr"

instance s ~ s' => P.HasComputedDataDir (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedDataDir x = TF.compute (TF.refKey x) "_computedDataDir"

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedDevMode (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedDevMode x = TF.compute (TF.refKey x) "_computedDevMode"

instance s ~ s' => P.HasComputedDns (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (Dns s))) where
    computedDns x = TF.compute (TF.refKey x) "_computedDns"

instance s ~ s' => P.HasComputedDnsRecursors (TF.Ref s' (AgentSelfData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedDnsRecursors x = TF.compute (TF.refKey x) "_computedDnsRecursors"

instance s ~ s' => P.HasComputedDomain (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedDomain x = TF.compute (TF.refKey x) "_computedDomain"

instance s ~ s' => P.HasComputedEnableAnonymousSignature (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableAnonymousSignature x = TF.compute (TF.refKey x) "_computedEnableAnonymousSignature"

instance s ~ s' => P.HasComputedEnableCoordinates (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableCoordinates x = TF.compute (TF.refKey x) "_computedEnableCoordinates"

instance s ~ s' => P.HasComputedEnableDebug (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableDebug x = TF.compute (TF.refKey x) "_computedEnableDebug"

instance s ~ s' => P.HasComputedEnableRemoteExec (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableRemoteExec x = TF.compute (TF.refKey x) "_computedEnableRemoteExec"

instance s ~ s' => P.HasComputedEnableSyslog (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableSyslog x = TF.compute (TF.refKey x) "_computedEnableSyslog"

instance s ~ s' => P.HasComputedEnableUi (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableUi x = TF.compute (TF.refKey x) "_computedEnableUi"

instance s ~ s' => P.HasComputedEnableUpdateCheck (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedEnableUpdateCheck x = TF.compute (TF.refKey x) "_computedEnableUpdateCheck"

instance s ~ s' => P.HasComputedId (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "_computedId"

instance s ~ s' => P.HasComputedLeaveOnInt (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedLeaveOnInt x = TF.compute (TF.refKey x) "_computedLeaveOnInt"

instance s ~ s' => P.HasComputedLeaveOnTerm (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedLeaveOnTerm x = TF.compute (TF.refKey x) "_computedLeaveOnTerm"

instance s ~ s' => P.HasComputedLogLevel (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedLogLevel x = TF.compute (TF.refKey x) "_computedLogLevel"

instance s ~ s' => P.HasComputedName (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedPerformance (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (Performance s))) where
    computedPerformance x = TF.compute (TF.refKey x) "_computedPerformance"

instance s ~ s' => P.HasComputedPidFile (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedPidFile x = TF.compute (TF.refKey x) "_computedPidFile"

instance s ~ s' => P.HasComputedPorts (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (Ports s))) where
    computedPorts x = TF.compute (TF.refKey x) "_computedPorts"

instance s ~ s' => P.HasComputedProtocolVersion (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Integer) where
    computedProtocolVersion x = TF.compute (TF.refKey x) "_computedProtocolVersion"

instance s ~ s' => P.HasComputedReconnectTimeoutLan (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedReconnectTimeoutLan x = TF.compute (TF.refKey x) "_computedReconnectTimeoutLan"

instance s ~ s' => P.HasComputedReconnectTimeoutWan (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedReconnectTimeoutWan x = TF.compute (TF.refKey x) "_computedReconnectTimeoutWan"

instance s ~ s' => P.HasComputedRejoinAfterLeave (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedRejoinAfterLeave x = TF.compute (TF.refKey x) "_computedRejoinAfterLeave"

instance s ~ s' => P.HasComputedRetryJoin (TF.Ref s' (AgentSelfData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedRetryJoin x = TF.compute (TF.refKey x) "_computedRetryJoin"

instance s ~ s' => P.HasComputedRetryJoinEc2 (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (RetryJoinEc2 s))) where
    computedRetryJoinEc2 x = TF.compute (TF.refKey x) "_computedRetryJoinEc2"

instance s ~ s' => P.HasComputedRetryJoinGce (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (RetryJoinGce s))) where
    computedRetryJoinGce x = TF.compute (TF.refKey x) "_computedRetryJoinGce"

instance s ~ s' => P.HasComputedRetryJoinWan (TF.Ref s' (AgentSelfData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedRetryJoinWan x = TF.compute (TF.refKey x) "_computedRetryJoinWan"

instance s ~ s' => P.HasComputedRetryMaxAttempts (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Integer) where
    computedRetryMaxAttempts x = TF.compute (TF.refKey x) "_computedRetryMaxAttempts"

instance s ~ s' => P.HasComputedRetryMaxAttemptsWan (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Integer) where
    computedRetryMaxAttemptsWan x = TF.compute (TF.refKey x) "_computedRetryMaxAttemptsWan"

instance s ~ s' => P.HasComputedSerfLanBindAddr (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedSerfLanBindAddr x = TF.compute (TF.refKey x) "_computedSerfLanBindAddr"

instance s ~ s' => P.HasComputedSerfWanBindAddr (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedSerfWanBindAddr x = TF.compute (TF.refKey x) "_computedSerfWanBindAddr"

instance s ~ s' => P.HasComputedServerMode (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedServerMode x = TF.compute (TF.refKey x) "_computedServerMode"

instance s ~ s' => P.HasComputedServerName (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedServerName x = TF.compute (TF.refKey x) "_computedServerName"

instance s ~ s' => P.HasComputedSessionTtlMin (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedSessionTtlMin x = TF.compute (TF.refKey x) "_computedSessionTtlMin"

instance s ~ s' => P.HasComputedStartJoin (TF.Ref s' (AgentSelfData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedStartJoin x = TF.compute (TF.refKey x) "_computedStartJoin"

instance s ~ s' => P.HasComputedStartJoinWan (TF.Ref s' (AgentSelfData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedStartJoinWan x = TF.compute (TF.refKey x) "_computedStartJoinWan"

instance s ~ s' => P.HasComputedSyslogFacility (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedSyslogFacility x = TF.compute (TF.refKey x) "_computedSyslogFacility"

instance s ~ s' => P.HasComputedTaggedAddresses (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (TaggedAddresses s))) where
    computedTaggedAddresses x = TF.compute (TF.refKey x) "_computedTaggedAddresses"

instance s ~ s' => P.HasComputedTelemetry (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (Telemetry s))) where
    computedTelemetry x = TF.compute (TF.refKey x) "_computedTelemetry"

instance s ~ s' => P.HasComputedTlsCaFile (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedTlsCaFile x = TF.compute (TF.refKey x) "_computedTlsCaFile"

instance s ~ s' => P.HasComputedTlsCertFile (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedTlsCertFile x = TF.compute (TF.refKey x) "_computedTlsCertFile"

instance s ~ s' => P.HasComputedTlsKeyFile (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedTlsKeyFile x = TF.compute (TF.refKey x) "_computedTlsKeyFile"

instance s ~ s' => P.HasComputedTlsMinVersion (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedTlsMinVersion x = TF.compute (TF.refKey x) "_computedTlsMinVersion"

instance s ~ s' => P.HasComputedTlsVerifyIncoming (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedTlsVerifyIncoming x = TF.compute (TF.refKey x) "_computedTlsVerifyIncoming"

instance s ~ s' => P.HasComputedTlsVerifyOutgoing (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedTlsVerifyOutgoing x = TF.compute (TF.refKey x) "_computedTlsVerifyOutgoing"

instance s ~ s' => P.HasComputedTlsVerifyServerHostname (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedTlsVerifyServerHostname x = TF.compute (TF.refKey x) "_computedTlsVerifyServerHostname"

instance s ~ s' => P.HasComputedTranslateWanAddrs (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Bool) where
    computedTranslateWanAddrs x = TF.compute (TF.refKey x) "_computedTranslateWanAddrs"

instance s ~ s' => P.HasComputedUiDir (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedUiDir x = TF.compute (TF.refKey x) "_computedUiDir"

instance s ~ s' => P.HasComputedUnixSockets (TF.Ref s' (AgentSelfData s)) (TF.Attr s (P.HashMap P.Text (UnixSockets s))) where
    computedUnixSockets x = TF.compute (TF.refKey x) "_computedUnixSockets"

instance s ~ s' => P.HasComputedVersion (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedVersion x = TF.compute (TF.refKey x) "_computedVersion"

instance s ~ s' => P.HasComputedVersionPrerelease (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedVersionPrerelease x = TF.compute (TF.refKey x) "_computedVersionPrerelease"

instance s ~ s' => P.HasComputedVersionRevision (TF.Ref s' (AgentSelfData s)) (TF.Attr s P.Text) where
    computedVersionRevision x = TF.compute (TF.refKey x) "_computedVersionRevision"

-- | @consul_catalog_nodes@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_catalog_nodes terraform documentation>
-- for more information.
data CatalogNodesData s = CatalogNodesData'
    { _queryOptions :: TF.Attr s [TF.Attr s (QueryOptions s)]
    -- ^ @query_options@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (CatalogNodesData s) where
    toObject CatalogNodesData'{..} = catMaybes
        [ TF.assign "query_options" <$> TF.attribute _queryOptions
        ]

catalogNodesData
    :: TF.DataSource P.Provider (CatalogNodesData s)
catalogNodesData =
    TF.newDataSource "consul_catalog_nodes" $
        CatalogNodesData'
            { _queryOptions = TF.Nil
            }

instance P.HasQueryOptions (CatalogNodesData s) (TF.Attr s [TF.Attr s (QueryOptions s)]) where
    queryOptions =
        P.lens (_queryOptions :: CatalogNodesData s -> TF.Attr s [TF.Attr s (QueryOptions s)])
               (\s a -> s { _queryOptions = a
                          } :: CatalogNodesData s)

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (CatalogNodesData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedNodeIds (TF.Ref s' (CatalogNodesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNodeIds x = TF.compute (TF.refKey x) "_computedNodeIds"

instance s ~ s' => P.HasComputedNodeNames (TF.Ref s' (CatalogNodesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNodeNames x = TF.compute (TF.refKey x) "_computedNodeNames"

instance s ~ s' => P.HasComputedNodes (TF.Ref s' (CatalogNodesData s)) (TF.Attr s [Nodes s]) where
    computedNodes x = TF.compute (TF.refKey x) "_computedNodes"

-- | @consul_catalog_service@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_catalog_service terraform documentation>
-- for more information.
data CatalogServiceData s = CatalogServiceData'
    { _datacenter   :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _name         :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _queryOptions :: TF.Attr s [TF.Attr s (QueryOptions s)]
    -- ^ @query_options@ - (Optional)
    --
    , _tag          :: TF.Attr s P.Text
    -- ^ @tag@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (CatalogServiceData s) where
    toObject CatalogServiceData'{..} = catMaybes
        [ TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "query_options" <$> TF.attribute _queryOptions
        , TF.assign "tag" <$> TF.attribute _tag
        ]

catalogServiceData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (CatalogServiceData s)
catalogServiceData _name =
    TF.newDataSource "consul_catalog_service" $
        CatalogServiceData'
            { _datacenter = TF.Nil
            , _name = _name
            , _queryOptions = TF.Nil
            , _tag = TF.Nil
            }

instance P.HasDatacenter (CatalogServiceData s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: CatalogServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a
                          } :: CatalogServiceData s)

instance P.HasName (CatalogServiceData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CatalogServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: CatalogServiceData s)

instance P.HasQueryOptions (CatalogServiceData s) (TF.Attr s [TF.Attr s (QueryOptions s)]) where
    queryOptions =
        P.lens (_queryOptions :: CatalogServiceData s -> TF.Attr s [TF.Attr s (QueryOptions s)])
               (\s a -> s { _queryOptions = a
                          } :: CatalogServiceData s)

instance P.HasTag (CatalogServiceData s) (TF.Attr s P.Text) where
    tag =
        P.lens (_tag :: CatalogServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _tag = a
                          } :: CatalogServiceData s)

instance s ~ s' => P.HasComputedService (TF.Ref s' (CatalogServiceData s)) (TF.Attr s [Service s]) where
    computedService x = TF.compute (TF.refKey x) "_computedService"

-- | @consul_catalog_services@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_catalog_services terraform documentation>
-- for more information.
data CatalogServicesData s = CatalogServicesData'
    { _queryOptions :: TF.Attr s [TF.Attr s (QueryOptions s)]
    -- ^ @query_options@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (CatalogServicesData s) where
    toObject CatalogServicesData'{..} = catMaybes
        [ TF.assign "query_options" <$> TF.attribute _queryOptions
        ]

catalogServicesData
    :: TF.DataSource P.Provider (CatalogServicesData s)
catalogServicesData =
    TF.newDataSource "consul_catalog_services" $
        CatalogServicesData'
            { _queryOptions = TF.Nil
            }

instance P.HasQueryOptions (CatalogServicesData s) (TF.Attr s [TF.Attr s (QueryOptions s)]) where
    queryOptions =
        P.lens (_queryOptions :: CatalogServicesData s -> TF.Attr s [TF.Attr s (QueryOptions s)])
               (\s a -> s { _queryOptions = a
                          } :: CatalogServicesData s)

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (CatalogServicesData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedNames (TF.Ref s' (CatalogServicesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNames x = TF.compute (TF.refKey x) "_computedNames"

instance s ~ s' => P.HasComputedServices (TF.Ref s' (CatalogServicesData s)) (TF.Attr s (P.HashMap P.Text (Services s))) where
    computedServices x = TF.compute (TF.refKey x) "_computedServices"

-- | @consul_key_prefix@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_key_prefix terraform documentation>
-- for more information.
data KeyPrefixData s = KeyPrefixData'
    { _pathPrefix :: TF.Attr s P.Text
    -- ^ @path_prefix@ - (Required)
    --
    , _subkey     :: TF.Attr s [TF.Attr s (Subkey s)]
    -- ^ @subkey@ - (Optional)
    --
    , _token      :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (KeyPrefixData s) where
    toObject KeyPrefixData'{..} = catMaybes
        [ TF.assign "path_prefix" <$> TF.attribute _pathPrefix
        , TF.assign "subkey" <$> TF.attribute _subkey
        , TF.assign "token" <$> TF.attribute _token
        ]

keyPrefixData
    :: TF.Attr s P.Text -- ^ @path_prefix@ - 'P.pathPrefix'
    -> TF.DataSource P.Provider (KeyPrefixData s)
keyPrefixData _pathPrefix =
    TF.newDataSource "consul_key_prefix" $
        KeyPrefixData'
            { _pathPrefix = _pathPrefix
            , _subkey = TF.Nil
            , _token = TF.Nil
            }

instance P.HasPathPrefix (KeyPrefixData s) (TF.Attr s P.Text) where
    pathPrefix =
        P.lens (_pathPrefix :: KeyPrefixData s -> TF.Attr s P.Text)
               (\s a -> s { _pathPrefix = a
                          } :: KeyPrefixData s)

instance P.HasSubkey (KeyPrefixData s) (TF.Attr s [TF.Attr s (Subkey s)]) where
    subkey =
        P.lens (_subkey :: KeyPrefixData s -> TF.Attr s [TF.Attr s (Subkey s)])
               (\s a -> s { _subkey = a
                          } :: KeyPrefixData s)

instance P.HasToken (KeyPrefixData s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: KeyPrefixData s -> TF.Attr s P.Text)
               (\s a -> s { _token = a
                          } :: KeyPrefixData s)

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (KeyPrefixData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedSubkeys (TF.Ref s' (KeyPrefixData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedSubkeys x = TF.compute (TF.refKey x) "_computedSubkeys"

instance s ~ s' => P.HasComputedVar (TF.Ref s' (KeyPrefixData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedVar x = TF.compute (TF.refKey x) "_computedVar"

-- | @consul_keys@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_keys terraform documentation>
-- for more information.
data KeysData s = KeysData'
    { _key   :: TF.Attr s [TF.Attr s (Key s)]
    -- ^ @key@ - (Optional)
    --
    , _token :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (KeysData s) where
    toObject KeysData'{..} = catMaybes
        [ TF.assign "key" <$> TF.attribute _key
        , TF.assign "token" <$> TF.attribute _token
        ]

keysData
    :: TF.DataSource P.Provider (KeysData s)
keysData =
    TF.newDataSource "consul_keys" $
        KeysData'
            { _key = TF.Nil
            , _token = TF.Nil
            }

instance P.HasKey (KeysData s) (TF.Attr s [TF.Attr s (Key s)]) where
    key =
        P.lens (_key :: KeysData s -> TF.Attr s [TF.Attr s (Key s)])
               (\s a -> s { _key = a
                          } :: KeysData s)

instance P.HasToken (KeysData s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: KeysData s -> TF.Attr s P.Text)
               (\s a -> s { _token = a
                          } :: KeysData s)

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (KeysData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedVar (TF.Ref s' (KeysData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedVar x = TF.compute (TF.refKey x) "_computedVar"

-- | @consul_nodes@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_nodes terraform documentation>
-- for more information.
data NodesData s = NodesData'
    { _queryOptions :: TF.Attr s [TF.Attr s (QueryOptions s)]
    -- ^ @query_options@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (NodesData s) where
    toObject NodesData'{..} = catMaybes
        [ TF.assign "query_options" <$> TF.attribute _queryOptions
        ]

nodesData
    :: TF.DataSource P.Provider (NodesData s)
nodesData =
    TF.newDataSource "consul_nodes" $
        NodesData'
            { _queryOptions = TF.Nil
            }

instance P.HasQueryOptions (NodesData s) (TF.Attr s [TF.Attr s (QueryOptions s)]) where
    queryOptions =
        P.lens (_queryOptions :: NodesData s -> TF.Attr s [TF.Attr s (QueryOptions s)])
               (\s a -> s { _queryOptions = a
                          } :: NodesData s)

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (NodesData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedNodeIds (TF.Ref s' (NodesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNodeIds x = TF.compute (TF.refKey x) "_computedNodeIds"

instance s ~ s' => P.HasComputedNodeNames (TF.Ref s' (NodesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNodeNames x = TF.compute (TF.refKey x) "_computedNodeNames"

instance s ~ s' => P.HasComputedNodes (TF.Ref s' (NodesData s)) (TF.Attr s [Nodes s]) where
    computedNodes x = TF.compute (TF.refKey x) "_computedNodes"

-- | @consul_service@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_service terraform documentation>
-- for more information.
data ServiceData s = ServiceData'
    { _datacenter   :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _name         :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _queryOptions :: TF.Attr s [TF.Attr s (QueryOptions s)]
    -- ^ @query_options@ - (Optional)
    --
    , _tag          :: TF.Attr s P.Text
    -- ^ @tag@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ServiceData s) where
    toObject ServiceData'{..} = catMaybes
        [ TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "query_options" <$> TF.attribute _queryOptions
        , TF.assign "tag" <$> TF.attribute _tag
        ]

serviceData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (ServiceData s)
serviceData _name =
    TF.newDataSource "consul_service" $
        ServiceData'
            { _datacenter = TF.Nil
            , _name = _name
            , _queryOptions = TF.Nil
            , _tag = TF.Nil
            }

instance P.HasDatacenter (ServiceData s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: ServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a
                          } :: ServiceData s)

instance P.HasName (ServiceData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          } :: ServiceData s)

instance P.HasQueryOptions (ServiceData s) (TF.Attr s [TF.Attr s (QueryOptions s)]) where
    queryOptions =
        P.lens (_queryOptions :: ServiceData s -> TF.Attr s [TF.Attr s (QueryOptions s)])
               (\s a -> s { _queryOptions = a
                          } :: ServiceData s)

instance P.HasTag (ServiceData s) (TF.Attr s P.Text) where
    tag =
        P.lens (_tag :: ServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _tag = a
                          } :: ServiceData s)

instance s ~ s' => P.HasComputedService (TF.Ref s' (ServiceData s)) (TF.Attr s [Service s]) where
    computedService x = TF.compute (TF.refKey x) "_computedService"

-- | @consul_services@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Consul/consul_services terraform documentation>
-- for more information.
data ServicesData s = ServicesData'
    { _queryOptions :: TF.Attr s [TF.Attr s (QueryOptions s)]
    -- ^ @query_options@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (ServicesData s) where
    toObject ServicesData'{..} = catMaybes
        [ TF.assign "query_options" <$> TF.attribute _queryOptions
        ]

servicesData
    :: TF.DataSource P.Provider (ServicesData s)
servicesData =
    TF.newDataSource "consul_services" $
        ServicesData'
            { _queryOptions = TF.Nil
            }

instance P.HasQueryOptions (ServicesData s) (TF.Attr s [TF.Attr s (QueryOptions s)]) where
    queryOptions =
        P.lens (_queryOptions :: ServicesData s -> TF.Attr s [TF.Attr s (QueryOptions s)])
               (\s a -> s { _queryOptions = a
                          } :: ServicesData s)

instance s ~ s' => P.HasComputedDatacenter (TF.Ref s' (ServicesData s)) (TF.Attr s P.Text) where
    computedDatacenter x = TF.compute (TF.refKey x) "_computedDatacenter"

instance s ~ s' => P.HasComputedNames (TF.Ref s' (ServicesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNames x = TF.compute (TF.refKey x) "_computedNames"

instance s ~ s' => P.HasComputedServices (TF.Ref s' (ServicesData s)) (TF.Attr s (P.HashMap P.Text (Services s))) where
    computedServices x = TF.compute (TF.refKey x) "_computedServices"
