-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Consul.Settings
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Consul.Settings
    (
    -- * Settings Datatypes
    -- ** agent_self_dns
      AgentSelfDns (..)
    , newAgentSelfDns

    -- ** services_query_options
    , ServicesQueryOptions (..)
    , newServicesQueryOptions

    -- ** keys_key
    , KeysKey (..)
    , newKeysKey

    -- ** service_service
    , ServiceService (..)
    , newServiceService

    -- ** nodes_tagged_addresses
    , NodesTaggedAddresses (..)
    , newNodesTaggedAddresses

    -- ** nodes_nodes
    , NodesNodes (..)
    , newNodesNodes

    -- ** agent_self_ports
    , AgentSelfPorts (..)
    , newAgentSelfPorts

    -- ** service_query_options
    , ServiceQueryOptions (..)
    , newServiceQueryOptions

    -- ** agent_self_advertise_addrs
    , AgentSelfAdvertiseAddrs (..)
    , newAgentSelfAdvertiseAddrs

    -- ** catalog_services_query_options
    , CatalogServicesQueryOptions (..)
    , newCatalogServicesQueryOptions

    -- ** catalog_nodes_nodes
    , CatalogNodesNodes (..)
    , newCatalogNodesNodes

    -- ** catalog_service_query_options
    , CatalogServiceQueryOptions (..)
    , newCatalogServiceQueryOptions

    -- ** catalog_service_service
    , CatalogServiceService (..)
    , newCatalogServiceService

    -- ** agent_self_tagged_addresses
    , AgentSelfTaggedAddresses (..)
    , newAgentSelfTaggedAddresses

    -- ** key_prefix_subkey
    , KeyPrefixSubkey (..)
    , newKeyPrefixSubkey

    -- ** prepared_query_template
    , PreparedQueryTemplate (..)
    , newPreparedQueryTemplate

    -- ** services_services
    , ServicesServices (..)
    , newServicesServices

    -- ** agent_self_telemetry
    , AgentSelfTelemetry (..)
    , newAgentSelfTelemetry

    -- ** catalog_entry_service
    , CatalogEntryService (..)
    , newCatalogEntryService

    -- ** agent_self_performance
    , AgentSelfPerformance (..)
    , newAgentSelfPerformance

    -- ** catalog_nodes_query_options
    , CatalogNodesQueryOptions (..)
    , newCatalogNodesQueryOptions

    -- ** agent_self_addresses
    , AgentSelfAddresses (..)
    , newAgentSelfAddresses

    -- ** prepared_query_failover
    , PreparedQueryFailover (..)
    , newPreparedQueryFailover

    -- ** agent_self_retry_join_ec2
    , AgentSelfRetryJoinEc2 (..)
    , newAgentSelfRetryJoinEc2

    -- ** catalog_services_services
    , CatalogServicesServices (..)
    , newCatalogServicesServices

    -- ** prepared_query_dns
    , PreparedQueryDns (..)
    , newPreparedQueryDns

    -- ** agent_self_unix_sockets
    , AgentSelfUnixSockets (..)
    , newAgentSelfUnixSockets

    -- ** agent_self_retry_join_gce
    , AgentSelfRetryJoinGce (..)
    , newAgentSelfRetryJoinGce

    -- ** nodes_query_options
    , NodesQueryOptions (..)
    , newNodesQueryOptions

    -- ** service_tagged_addresses
    , ServiceTaggedAddresses (..)
    , newServiceTaggedAddresses

    ) where

import Data.Functor ((<$>))

import GHC.Base (($))

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
import qualified Terrafomo.Consul.Lens  as P
import qualified Terrafomo.Consul.Types as P
import qualified Terrafomo.HCL          as TF
import qualified Terrafomo.Name         as TF
import qualified Terrafomo.Validator    as TF

-- | @agent_self_dns@ nested settings.
data AgentSelfDns s = AgentSelfDns'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfDns
    :: AgentSelfDns s
newAgentSelfDns =
    AgentSelfDns'

instance P.Hashable  (AgentSelfDns s)
instance TF.IsValue  (AgentSelfDns s)
instance TF.IsObject (AgentSelfDns s) where
    toObject AgentSelfDns' = []

instance TF.IsValid (AgentSelfDns s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAllowStale (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Bool) where
    computedAllowStale x = TF.compute (TF.refKey x) "allow_stale"

instance s ~ s' => P.HasComputedEnableCompression (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Bool) where
    computedEnableCompression x = TF.compute (TF.refKey x) "enable_compression"

instance s ~ s' => P.HasComputedEnableTruncate (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Bool) where
    computedEnableTruncate x = TF.compute (TF.refKey x) "enable_truncate"

instance s ~ s' => P.HasComputedMaxStale (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Text) where
    computedMaxStale x = TF.compute (TF.refKey x) "max_stale"

instance s ~ s' => P.HasComputedNodeTtl (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Text) where
    computedNodeTtl x = TF.compute (TF.refKey x) "node_ttl"

instance s ~ s' => P.HasComputedOnlyPassing (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Bool) where
    computedOnlyPassing x = TF.compute (TF.refKey x) "only_passing"

instance s ~ s' => P.HasComputedRecursorTimeout (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Text) where
    computedRecursorTimeout x = TF.compute (TF.refKey x) "recursor_timeout"

instance s ~ s' => P.HasComputedServiceTtl (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Text) where
    computedServiceTtl x = TF.compute (TF.refKey x) "service_ttl"

instance s ~ s' => P.HasComputedUdpAnswerLimit (TF.Ref s' (AgentSelfDns s)) (TF.Attr s P.Integer) where
    computedUdpAnswerLimit x = TF.compute (TF.refKey x) "udp_answer_limit"

-- | @services_query_options@ nested settings.
data ServicesQueryOptions s = ServicesQueryOptions'
    { _allowStale        :: TF.Attr s P.Bool
    -- ^ @allow_stale@ - (Optional)
    --
    , _datacenter        :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _near              :: TF.Attr s P.Text
    -- ^ @near@ - (Optional)
    --
    , _nodeMeta          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @node_meta@ - (Optional)
    --
    , _requireConsistent :: TF.Attr s P.Bool
    -- ^ @require_consistent@ - (Optional)
    --
    , _token             :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    , _waitIndex         :: TF.Attr s P.Integer
    -- ^ @wait_index@ - (Optional)
    --
    , _waitTime          :: TF.Attr s P.Text
    -- ^ @wait_time@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newServicesQueryOptions
    :: ServicesQueryOptions s
newServicesQueryOptions =
    ServicesQueryOptions'
        { _allowStale = TF.value P.True
        , _datacenter = TF.Nil
        , _near = TF.Nil
        , _nodeMeta = TF.Nil
        , _requireConsistent = TF.value P.False
        , _token = TF.Nil
        , _waitIndex = TF.Nil
        , _waitTime = TF.Nil
        }

instance P.Hashable  (ServicesQueryOptions s)
instance TF.IsValue  (ServicesQueryOptions s)
instance TF.IsObject (ServicesQueryOptions s) where
    toObject ServicesQueryOptions'{..} = P.catMaybes
        [ TF.assign "allow_stale" <$> TF.attribute _allowStale
        , TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "near" <$> TF.attribute _near
        , TF.assign "node_meta" <$> TF.attribute _nodeMeta
        , TF.assign "require_consistent" <$> TF.attribute _requireConsistent
        , TF.assign "token" <$> TF.attribute _token
        , TF.assign "wait_index" <$> TF.attribute _waitIndex
        , TF.assign "wait_time" <$> TF.attribute _waitTime
        ]

instance TF.IsValid (ServicesQueryOptions s) where
    validator = P.mempty

instance P.HasAllowStale (ServicesQueryOptions s) (TF.Attr s P.Bool) where
    allowStale =
        P.lens (_allowStale :: ServicesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _allowStale = a } :: ServicesQueryOptions s)

instance P.HasDatacenter (ServicesQueryOptions s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: ServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a } :: ServicesQueryOptions s)

instance P.HasNear (ServicesQueryOptions s) (TF.Attr s P.Text) where
    near =
        P.lens (_near :: ServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _near = a } :: ServicesQueryOptions s)

instance P.HasNodeMeta (ServicesQueryOptions s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    nodeMeta =
        P.lens (_nodeMeta :: ServicesQueryOptions s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _nodeMeta = a } :: ServicesQueryOptions s)

instance P.HasRequireConsistent (ServicesQueryOptions s) (TF.Attr s P.Bool) where
    requireConsistent =
        P.lens (_requireConsistent :: ServicesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _requireConsistent = a } :: ServicesQueryOptions s)

instance P.HasToken (ServicesQueryOptions s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: ServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _token = a } :: ServicesQueryOptions s)

instance P.HasWaitIndex (ServicesQueryOptions s) (TF.Attr s P.Integer) where
    waitIndex =
        P.lens (_waitIndex :: ServicesQueryOptions s -> TF.Attr s P.Integer)
               (\s a -> s { _waitIndex = a } :: ServicesQueryOptions s)

instance P.HasWaitTime (ServicesQueryOptions s) (TF.Attr s P.Text) where
    waitTime =
        P.lens (_waitTime :: ServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _waitTime = a } :: ServicesQueryOptions s)

-- | @keys_key@ nested settings.
data KeysKey s = KeysKey'
    { _default' :: TF.Attr s P.Text
    -- ^ @default@ - (Optional)
    --
    , _delete   :: TF.Attr s P.Bool
    -- ^ @delete@ - (Optional)
    --
    , _path     :: TF.Attr s P.Text
    -- ^ @path@ - (Required)
    --
    , _default' :: TF.Attr s P.Text
    -- ^ @default@ - (Optional)
    --
    , _name     :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _path     :: TF.Attr s P.Text
    -- ^ @path@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newKeysKey
    :: TF.Attr s P.Text -- ^ @path@ - 'P.path'
    -> TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @path@ - 'P.path'
    -> KeysKey s
newKeysKey _path _name _path =
    KeysKey'
        { _default' = TF.Nil
        , _delete = TF.value P.False
        , _path = _path
        , _default' = TF.Nil
        , _name = _name
        , _path = _path
        }

instance P.Hashable  (KeysKey s)
instance TF.IsValue  (KeysKey s)
instance TF.IsObject (KeysKey s) where
    toObject KeysKey'{..} = P.catMaybes
        [ TF.assign "default" <$> TF.attribute _default'
        , TF.assign "delete" <$> TF.attribute _delete
        , TF.assign "path" <$> TF.attribute _path
        , TF.assign "default" <$> TF.attribute _default'
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "path" <$> TF.attribute _path
        ]

instance TF.IsValid (KeysKey s) where
    validator = P.mempty

instance P.HasDefault' (KeysKey s) (TF.Attr s P.Text) where
    default' =
        P.lens (_default' :: KeysKey s -> TF.Attr s P.Text)
               (\s a -> s { _default' = a } :: KeysKey s)

instance P.HasDelete (KeysKey s) (TF.Attr s P.Bool) where
    delete =
        P.lens (_delete :: KeysKey s -> TF.Attr s P.Bool)
               (\s a -> s { _delete = a } :: KeysKey s)

instance P.HasPath (KeysKey s) (TF.Attr s P.Text) where
    path =
        P.lens (_path :: KeysKey s -> TF.Attr s P.Text)
               (\s a -> s { _path = a } :: KeysKey s)

instance P.HasDefault' (KeysKey s) (TF.Attr s P.Text) where
    default' =
        P.lens (_default' :: KeysKey s -> TF.Attr s P.Text)
               (\s a -> s { _default' = a } :: KeysKey s)

instance P.HasName (KeysKey s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KeysKey s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: KeysKey s)

instance P.HasPath (KeysKey s) (TF.Attr s P.Text) where
    path =
        P.lens (_path :: KeysKey s -> TF.Attr s P.Text)
               (\s a -> s { _path = a } :: KeysKey s)

instance s ~ s' => P.HasComputedValue (TF.Ref s' (KeysKey s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "value"

-- | @service_service@ nested settings.
data ServiceService s = ServiceService'
    deriving (P.Show, P.Eq, P.Generic)

newServiceService
    :: ServiceService s
newServiceService =
    ServiceService'

instance P.Hashable  (ServiceService s)
instance TF.IsValue  (ServiceService s)
instance TF.IsObject (ServiceService s) where
    toObject ServiceService' = []

instance TF.IsValid (ServiceService s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAddress (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedAddress x = TF.compute (TF.refKey x) "address"

instance s ~ s' => P.HasComputedCreateIndex (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedCreateIndex x = TF.compute (TF.refKey x) "create_index"

instance s ~ s' => P.HasComputedEnableTagOverride (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedEnableTagOverride x = TF.compute (TF.refKey x) "enable_tag_override"

instance s ~ s' => P.HasComputedId (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedModifyIndex (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedModifyIndex x = TF.compute (TF.refKey x) "modify_index"

instance s ~ s' => P.HasComputedName (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedNodeAddress (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedNodeAddress x = TF.compute (TF.refKey x) "node_address"

instance s ~ s' => P.HasComputedNodeId (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedNodeId x = TF.compute (TF.refKey x) "node_id"

instance s ~ s' => P.HasComputedNodeMeta (TF.Ref s' (ServiceService s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedNodeMeta x = TF.compute (TF.refKey x) "node_meta"

instance s ~ s' => P.HasComputedNodeName (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedNodeName x = TF.compute (TF.refKey x) "node_name"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (ServiceService s)) (TF.Attr s P.Text) where
    computedPort x = TF.compute (TF.refKey x) "port"

instance s ~ s' => P.HasComputedTaggedAddresses (TF.Ref s' (ServiceService s)) (TF.Attr s (P.HashMap P.Text (ServiceTaggedAddresses s))) where
    computedTaggedAddresses x = TF.compute (TF.refKey x) "tagged_addresses"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ServiceService s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @nodes_tagged_addresses@ nested settings.
data NodesTaggedAddresses s = NodesTaggedAddresses'
    deriving (P.Show, P.Eq, P.Generic)

newNodesTaggedAddresses
    :: NodesTaggedAddresses s
newNodesTaggedAddresses =
    NodesTaggedAddresses'

instance P.Hashable  (NodesTaggedAddresses s)
instance TF.IsValue  (NodesTaggedAddresses s)
instance TF.IsObject (NodesTaggedAddresses s) where
    toObject NodesTaggedAddresses' = []

instance TF.IsValid (NodesTaggedAddresses s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedLan (TF.Ref s' (NodesTaggedAddresses s)) (TF.Attr s P.Text) where
    computedLan x = TF.compute (TF.refKey x) "lan"

instance s ~ s' => P.HasComputedWan (TF.Ref s' (NodesTaggedAddresses s)) (TF.Attr s P.Text) where
    computedWan x = TF.compute (TF.refKey x) "wan"

-- | @nodes_nodes@ nested settings.
data NodesNodes s = NodesNodes'
    deriving (P.Show, P.Eq, P.Generic)

newNodesNodes
    :: NodesNodes s
newNodesNodes =
    NodesNodes'

instance P.Hashable  (NodesNodes s)
instance TF.IsValue  (NodesNodes s)
instance TF.IsObject (NodesNodes s) where
    toObject NodesNodes' = []

instance TF.IsValid (NodesNodes s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAddress (TF.Ref s' (NodesNodes s)) (TF.Attr s P.Text) where
    computedAddress x = TF.compute (TF.refKey x) "address"

instance s ~ s' => P.HasComputedId (TF.Ref s' (NodesNodes s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedMeta (TF.Ref s' (NodesNodes s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedMeta x = TF.compute (TF.refKey x) "meta"

instance s ~ s' => P.HasComputedName (TF.Ref s' (NodesNodes s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedTaggedAddresses (TF.Ref s' (NodesNodes s)) (TF.Attr s (P.HashMap P.Text (NodesTaggedAddresses s))) where
    computedTaggedAddresses x = TF.compute (TF.refKey x) "tagged_addresses"

-- | @agent_self_ports@ nested settings.
data AgentSelfPorts s = AgentSelfPorts'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfPorts
    :: AgentSelfPorts s
newAgentSelfPorts =
    AgentSelfPorts'

instance P.Hashable  (AgentSelfPorts s)
instance TF.IsValue  (AgentSelfPorts s)
instance TF.IsObject (AgentSelfPorts s) where
    toObject AgentSelfPorts' = []

instance TF.IsValid (AgentSelfPorts s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedDns (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedDns x = TF.compute (TF.refKey x) "dns"

instance s ~ s' => P.HasComputedHttp (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedHttp x = TF.compute (TF.refKey x) "http"

instance s ~ s' => P.HasComputedHttps (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedHttps x = TF.compute (TF.refKey x) "https"

instance s ~ s' => P.HasComputedRpc (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedRpc x = TF.compute (TF.refKey x) "rpc"

instance s ~ s' => P.HasComputedSerfLan (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedSerfLan x = TF.compute (TF.refKey x) "serf_lan"

instance s ~ s' => P.HasComputedSerfWan (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedSerfWan x = TF.compute (TF.refKey x) "serf_wan"

instance s ~ s' => P.HasComputedServer (TF.Ref s' (AgentSelfPorts s)) (TF.Attr s P.Integer) where
    computedServer x = TF.compute (TF.refKey x) "server"

-- | @service_query_options@ nested settings.
data ServiceQueryOptions s = ServiceQueryOptions'
    { _allowStale        :: TF.Attr s P.Bool
    -- ^ @allow_stale@ - (Optional)
    --
    , _datacenter        :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _near              :: TF.Attr s P.Text
    -- ^ @near@ - (Optional)
    --
    , _nodeMeta          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @node_meta@ - (Optional)
    --
    , _requireConsistent :: TF.Attr s P.Bool
    -- ^ @require_consistent@ - (Optional)
    --
    , _token             :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    , _waitIndex         :: TF.Attr s P.Integer
    -- ^ @wait_index@ - (Optional)
    --
    , _waitTime          :: TF.Attr s P.Text
    -- ^ @wait_time@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newServiceQueryOptions
    :: ServiceQueryOptions s
newServiceQueryOptions =
    ServiceQueryOptions'
        { _allowStale = TF.value P.True
        , _datacenter = TF.Nil
        , _near = TF.Nil
        , _nodeMeta = TF.Nil
        , _requireConsistent = TF.value P.False
        , _token = TF.Nil
        , _waitIndex = TF.Nil
        , _waitTime = TF.Nil
        }

instance P.Hashable  (ServiceQueryOptions s)
instance TF.IsValue  (ServiceQueryOptions s)
instance TF.IsObject (ServiceQueryOptions s) where
    toObject ServiceQueryOptions'{..} = P.catMaybes
        [ TF.assign "allow_stale" <$> TF.attribute _allowStale
        , TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "near" <$> TF.attribute _near
        , TF.assign "node_meta" <$> TF.attribute _nodeMeta
        , TF.assign "require_consistent" <$> TF.attribute _requireConsistent
        , TF.assign "token" <$> TF.attribute _token
        , TF.assign "wait_index" <$> TF.attribute _waitIndex
        , TF.assign "wait_time" <$> TF.attribute _waitTime
        ]

instance TF.IsValid (ServiceQueryOptions s) where
    validator = P.mempty

instance P.HasAllowStale (ServiceQueryOptions s) (TF.Attr s P.Bool) where
    allowStale =
        P.lens (_allowStale :: ServiceQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _allowStale = a } :: ServiceQueryOptions s)

instance P.HasDatacenter (ServiceQueryOptions s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: ServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a } :: ServiceQueryOptions s)

instance P.HasNear (ServiceQueryOptions s) (TF.Attr s P.Text) where
    near =
        P.lens (_near :: ServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _near = a } :: ServiceQueryOptions s)

instance P.HasNodeMeta (ServiceQueryOptions s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    nodeMeta =
        P.lens (_nodeMeta :: ServiceQueryOptions s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _nodeMeta = a } :: ServiceQueryOptions s)

instance P.HasRequireConsistent (ServiceQueryOptions s) (TF.Attr s P.Bool) where
    requireConsistent =
        P.lens (_requireConsistent :: ServiceQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _requireConsistent = a } :: ServiceQueryOptions s)

instance P.HasToken (ServiceQueryOptions s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: ServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _token = a } :: ServiceQueryOptions s)

instance P.HasWaitIndex (ServiceQueryOptions s) (TF.Attr s P.Integer) where
    waitIndex =
        P.lens (_waitIndex :: ServiceQueryOptions s -> TF.Attr s P.Integer)
               (\s a -> s { _waitIndex = a } :: ServiceQueryOptions s)

instance P.HasWaitTime (ServiceQueryOptions s) (TF.Attr s P.Text) where
    waitTime =
        P.lens (_waitTime :: ServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _waitTime = a } :: ServiceQueryOptions s)

-- | @agent_self_advertise_addrs@ nested settings.
data AgentSelfAdvertiseAddrs s = AgentSelfAdvertiseAddrs'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfAdvertiseAddrs
    :: AgentSelfAdvertiseAddrs s
newAgentSelfAdvertiseAddrs =
    AgentSelfAdvertiseAddrs'

instance P.Hashable  (AgentSelfAdvertiseAddrs s)
instance TF.IsValue  (AgentSelfAdvertiseAddrs s)
instance TF.IsObject (AgentSelfAdvertiseAddrs s) where
    toObject AgentSelfAdvertiseAddrs' = []

instance TF.IsValid (AgentSelfAdvertiseAddrs s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedRpc (TF.Ref s' (AgentSelfAdvertiseAddrs s)) (TF.Attr s P.Text) where
    computedRpc x = TF.compute (TF.refKey x) "rpc"

instance s ~ s' => P.HasComputedSerfLan (TF.Ref s' (AgentSelfAdvertiseAddrs s)) (TF.Attr s P.Text) where
    computedSerfLan x = TF.compute (TF.refKey x) "serf_lan"

instance s ~ s' => P.HasComputedSerfWan (TF.Ref s' (AgentSelfAdvertiseAddrs s)) (TF.Attr s P.Text) where
    computedSerfWan x = TF.compute (TF.refKey x) "serf_wan"

-- | @catalog_services_query_options@ nested settings.
data CatalogServicesQueryOptions s = CatalogServicesQueryOptions'
    { _allowStale        :: TF.Attr s P.Bool
    -- ^ @allow_stale@ - (Optional)
    --
    , _datacenter        :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _near              :: TF.Attr s P.Text
    -- ^ @near@ - (Optional)
    --
    , _nodeMeta          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @node_meta@ - (Optional)
    --
    , _requireConsistent :: TF.Attr s P.Bool
    -- ^ @require_consistent@ - (Optional)
    --
    , _token             :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    , _waitIndex         :: TF.Attr s P.Integer
    -- ^ @wait_index@ - (Optional)
    --
    , _waitTime          :: TF.Attr s P.Text
    -- ^ @wait_time@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newCatalogServicesQueryOptions
    :: CatalogServicesQueryOptions s
newCatalogServicesQueryOptions =
    CatalogServicesQueryOptions'
        { _allowStale = TF.value P.True
        , _datacenter = TF.Nil
        , _near = TF.Nil
        , _nodeMeta = TF.Nil
        , _requireConsistent = TF.value P.False
        , _token = TF.Nil
        , _waitIndex = TF.Nil
        , _waitTime = TF.Nil
        }

instance P.Hashable  (CatalogServicesQueryOptions s)
instance TF.IsValue  (CatalogServicesQueryOptions s)
instance TF.IsObject (CatalogServicesQueryOptions s) where
    toObject CatalogServicesQueryOptions'{..} = P.catMaybes
        [ TF.assign "allow_stale" <$> TF.attribute _allowStale
        , TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "near" <$> TF.attribute _near
        , TF.assign "node_meta" <$> TF.attribute _nodeMeta
        , TF.assign "require_consistent" <$> TF.attribute _requireConsistent
        , TF.assign "token" <$> TF.attribute _token
        , TF.assign "wait_index" <$> TF.attribute _waitIndex
        , TF.assign "wait_time" <$> TF.attribute _waitTime
        ]

instance TF.IsValid (CatalogServicesQueryOptions s) where
    validator = P.mempty

instance P.HasAllowStale (CatalogServicesQueryOptions s) (TF.Attr s P.Bool) where
    allowStale =
        P.lens (_allowStale :: CatalogServicesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _allowStale = a } :: CatalogServicesQueryOptions s)

instance P.HasDatacenter (CatalogServicesQueryOptions s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: CatalogServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a } :: CatalogServicesQueryOptions s)

instance P.HasNear (CatalogServicesQueryOptions s) (TF.Attr s P.Text) where
    near =
        P.lens (_near :: CatalogServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _near = a } :: CatalogServicesQueryOptions s)

instance P.HasNodeMeta (CatalogServicesQueryOptions s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    nodeMeta =
        P.lens (_nodeMeta :: CatalogServicesQueryOptions s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _nodeMeta = a } :: CatalogServicesQueryOptions s)

instance P.HasRequireConsistent (CatalogServicesQueryOptions s) (TF.Attr s P.Bool) where
    requireConsistent =
        P.lens (_requireConsistent :: CatalogServicesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _requireConsistent = a } :: CatalogServicesQueryOptions s)

instance P.HasToken (CatalogServicesQueryOptions s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: CatalogServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _token = a } :: CatalogServicesQueryOptions s)

instance P.HasWaitIndex (CatalogServicesQueryOptions s) (TF.Attr s P.Integer) where
    waitIndex =
        P.lens (_waitIndex :: CatalogServicesQueryOptions s -> TF.Attr s P.Integer)
               (\s a -> s { _waitIndex = a } :: CatalogServicesQueryOptions s)

instance P.HasWaitTime (CatalogServicesQueryOptions s) (TF.Attr s P.Text) where
    waitTime =
        P.lens (_waitTime :: CatalogServicesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _waitTime = a } :: CatalogServicesQueryOptions s)

-- | @catalog_nodes_nodes@ nested settings.
data CatalogNodesNodes s = CatalogNodesNodes'
    deriving (P.Show, P.Eq, P.Generic)

newCatalogNodesNodes
    :: CatalogNodesNodes s
newCatalogNodesNodes =
    CatalogNodesNodes'

instance P.Hashable  (CatalogNodesNodes s)
instance TF.IsValue  (CatalogNodesNodes s)
instance TF.IsObject (CatalogNodesNodes s) where
    toObject CatalogNodesNodes' = []

instance TF.IsValid (CatalogNodesNodes s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAddress (TF.Ref s' (CatalogNodesNodes s)) (TF.Attr s P.Text) where
    computedAddress x = TF.compute (TF.refKey x) "address"

instance s ~ s' => P.HasComputedId (TF.Ref s' (CatalogNodesNodes s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedMeta (TF.Ref s' (CatalogNodesNodes s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedMeta x = TF.compute (TF.refKey x) "meta"

instance s ~ s' => P.HasComputedName (TF.Ref s' (CatalogNodesNodes s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedTaggedAddresses (TF.Ref s' (CatalogNodesNodes s)) (TF.Attr s (P.HashMap P.Text (NodesTaggedAddresses s))) where
    computedTaggedAddresses x = TF.compute (TF.refKey x) "tagged_addresses"

-- | @catalog_service_query_options@ nested settings.
data CatalogServiceQueryOptions s = CatalogServiceQueryOptions'
    { _allowStale        :: TF.Attr s P.Bool
    -- ^ @allow_stale@ - (Optional)
    --
    , _datacenter        :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _near              :: TF.Attr s P.Text
    -- ^ @near@ - (Optional)
    --
    , _nodeMeta          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @node_meta@ - (Optional)
    --
    , _requireConsistent :: TF.Attr s P.Bool
    -- ^ @require_consistent@ - (Optional)
    --
    , _token             :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    , _waitIndex         :: TF.Attr s P.Integer
    -- ^ @wait_index@ - (Optional)
    --
    , _waitTime          :: TF.Attr s P.Text
    -- ^ @wait_time@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newCatalogServiceQueryOptions
    :: CatalogServiceQueryOptions s
newCatalogServiceQueryOptions =
    CatalogServiceQueryOptions'
        { _allowStale = TF.value P.True
        , _datacenter = TF.Nil
        , _near = TF.Nil
        , _nodeMeta = TF.Nil
        , _requireConsistent = TF.value P.False
        , _token = TF.Nil
        , _waitIndex = TF.Nil
        , _waitTime = TF.Nil
        }

instance P.Hashable  (CatalogServiceQueryOptions s)
instance TF.IsValue  (CatalogServiceQueryOptions s)
instance TF.IsObject (CatalogServiceQueryOptions s) where
    toObject CatalogServiceQueryOptions'{..} = P.catMaybes
        [ TF.assign "allow_stale" <$> TF.attribute _allowStale
        , TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "near" <$> TF.attribute _near
        , TF.assign "node_meta" <$> TF.attribute _nodeMeta
        , TF.assign "require_consistent" <$> TF.attribute _requireConsistent
        , TF.assign "token" <$> TF.attribute _token
        , TF.assign "wait_index" <$> TF.attribute _waitIndex
        , TF.assign "wait_time" <$> TF.attribute _waitTime
        ]

instance TF.IsValid (CatalogServiceQueryOptions s) where
    validator = P.mempty

instance P.HasAllowStale (CatalogServiceQueryOptions s) (TF.Attr s P.Bool) where
    allowStale =
        P.lens (_allowStale :: CatalogServiceQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _allowStale = a } :: CatalogServiceQueryOptions s)

instance P.HasDatacenter (CatalogServiceQueryOptions s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: CatalogServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a } :: CatalogServiceQueryOptions s)

instance P.HasNear (CatalogServiceQueryOptions s) (TF.Attr s P.Text) where
    near =
        P.lens (_near :: CatalogServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _near = a } :: CatalogServiceQueryOptions s)

instance P.HasNodeMeta (CatalogServiceQueryOptions s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    nodeMeta =
        P.lens (_nodeMeta :: CatalogServiceQueryOptions s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _nodeMeta = a } :: CatalogServiceQueryOptions s)

instance P.HasRequireConsistent (CatalogServiceQueryOptions s) (TF.Attr s P.Bool) where
    requireConsistent =
        P.lens (_requireConsistent :: CatalogServiceQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _requireConsistent = a } :: CatalogServiceQueryOptions s)

instance P.HasToken (CatalogServiceQueryOptions s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: CatalogServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _token = a } :: CatalogServiceQueryOptions s)

instance P.HasWaitIndex (CatalogServiceQueryOptions s) (TF.Attr s P.Integer) where
    waitIndex =
        P.lens (_waitIndex :: CatalogServiceQueryOptions s -> TF.Attr s P.Integer)
               (\s a -> s { _waitIndex = a } :: CatalogServiceQueryOptions s)

instance P.HasWaitTime (CatalogServiceQueryOptions s) (TF.Attr s P.Text) where
    waitTime =
        P.lens (_waitTime :: CatalogServiceQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _waitTime = a } :: CatalogServiceQueryOptions s)

-- | @catalog_service_service@ nested settings.
data CatalogServiceService s = CatalogServiceService'
    deriving (P.Show, P.Eq, P.Generic)

newCatalogServiceService
    :: CatalogServiceService s
newCatalogServiceService =
    CatalogServiceService'

instance P.Hashable  (CatalogServiceService s)
instance TF.IsValue  (CatalogServiceService s)
instance TF.IsObject (CatalogServiceService s) where
    toObject CatalogServiceService' = []

instance TF.IsValid (CatalogServiceService s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAddress (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedAddress x = TF.compute (TF.refKey x) "address"

instance s ~ s' => P.HasComputedCreateIndex (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedCreateIndex x = TF.compute (TF.refKey x) "create_index"

instance s ~ s' => P.HasComputedEnableTagOverride (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedEnableTagOverride x = TF.compute (TF.refKey x) "enable_tag_override"

instance s ~ s' => P.HasComputedId (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedModifyIndex (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedModifyIndex x = TF.compute (TF.refKey x) "modify_index"

instance s ~ s' => P.HasComputedName (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedNodeAddress (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedNodeAddress x = TF.compute (TF.refKey x) "node_address"

instance s ~ s' => P.HasComputedNodeId (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedNodeId x = TF.compute (TF.refKey x) "node_id"

instance s ~ s' => P.HasComputedNodeMeta (TF.Ref s' (CatalogServiceService s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedNodeMeta x = TF.compute (TF.refKey x) "node_meta"

instance s ~ s' => P.HasComputedNodeName (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedNodeName x = TF.compute (TF.refKey x) "node_name"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (CatalogServiceService s)) (TF.Attr s P.Text) where
    computedPort x = TF.compute (TF.refKey x) "port"

instance s ~ s' => P.HasComputedTaggedAddresses (TF.Ref s' (CatalogServiceService s)) (TF.Attr s (P.HashMap P.Text (ServiceTaggedAddresses s))) where
    computedTaggedAddresses x = TF.compute (TF.refKey x) "tagged_addresses"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (CatalogServiceService s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @agent_self_tagged_addresses@ nested settings.
data AgentSelfTaggedAddresses s = AgentSelfTaggedAddresses'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfTaggedAddresses
    :: AgentSelfTaggedAddresses s
newAgentSelfTaggedAddresses =
    AgentSelfTaggedAddresses'

instance P.Hashable  (AgentSelfTaggedAddresses s)
instance TF.IsValue  (AgentSelfTaggedAddresses s)
instance TF.IsObject (AgentSelfTaggedAddresses s) where
    toObject AgentSelfTaggedAddresses' = []

instance TF.IsValid (AgentSelfTaggedAddresses s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedLan (TF.Ref s' (AgentSelfTaggedAddresses s)) (TF.Attr s P.Text) where
    computedLan x = TF.compute (TF.refKey x) "lan"

instance s ~ s' => P.HasComputedWan (TF.Ref s' (AgentSelfTaggedAddresses s)) (TF.Attr s P.Text) where
    computedWan x = TF.compute (TF.refKey x) "wan"

-- | @key_prefix_subkey@ nested settings.
data KeyPrefixSubkey s = KeyPrefixSubkey'
    { _default' :: TF.Attr s P.Text
    -- ^ @default@ - (Optional)
    --
    , _name     :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    , _path     :: TF.Attr s P.Text
    -- ^ @path@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newKeyPrefixSubkey
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.Attr s P.Text -- ^ @path@ - 'P.path'
    -> KeyPrefixSubkey s
newKeyPrefixSubkey _name _path =
    KeyPrefixSubkey'
        { _default' = TF.Nil
        , _name = _name
        , _path = _path
        }

instance P.Hashable  (KeyPrefixSubkey s)
instance TF.IsValue  (KeyPrefixSubkey s)
instance TF.IsObject (KeyPrefixSubkey s) where
    toObject KeyPrefixSubkey'{..} = P.catMaybes
        [ TF.assign "default" <$> TF.attribute _default'
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "path" <$> TF.attribute _path
        ]

instance TF.IsValid (KeyPrefixSubkey s) where
    validator = P.mempty

instance P.HasDefault' (KeyPrefixSubkey s) (TF.Attr s P.Text) where
    default' =
        P.lens (_default' :: KeyPrefixSubkey s -> TF.Attr s P.Text)
               (\s a -> s { _default' = a } :: KeyPrefixSubkey s)

instance P.HasName (KeyPrefixSubkey s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KeyPrefixSubkey s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: KeyPrefixSubkey s)

instance P.HasPath (KeyPrefixSubkey s) (TF.Attr s P.Text) where
    path =
        P.lens (_path :: KeyPrefixSubkey s -> TF.Attr s P.Text)
               (\s a -> s { _path = a } :: KeyPrefixSubkey s)

-- | @prepared_query_template@ nested settings.
data PreparedQueryTemplate s = PreparedQueryTemplate'
    { _regexp :: TF.Attr s P.Text
    -- ^ @regexp@ - (Required)
    --
    , _type'  :: TF.Attr s P.Text
    -- ^ @type@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newPreparedQueryTemplate
    :: TF.Attr s P.Text -- ^ @regexp@ - 'P.regexp'
    -> TF.Attr s P.Text -- ^ @type@ - 'P.type''
    -> PreparedQueryTemplate s
newPreparedQueryTemplate _regexp _type' =
    PreparedQueryTemplate'
        { _regexp = _regexp
        , _type' = _type'
        }

instance P.Hashable  (PreparedQueryTemplate s)
instance TF.IsValue  (PreparedQueryTemplate s)
instance TF.IsObject (PreparedQueryTemplate s) where
    toObject PreparedQueryTemplate'{..} = P.catMaybes
        [ TF.assign "regexp" <$> TF.attribute _regexp
        , TF.assign "type" <$> TF.attribute _type'
        ]

instance TF.IsValid (PreparedQueryTemplate s) where
    validator = P.mempty

instance P.HasRegexp (PreparedQueryTemplate s) (TF.Attr s P.Text) where
    regexp =
        P.lens (_regexp :: PreparedQueryTemplate s -> TF.Attr s P.Text)
               (\s a -> s { _regexp = a } :: PreparedQueryTemplate s)

instance P.HasType' (PreparedQueryTemplate s) (TF.Attr s P.Text) where
    type' =
        P.lens (_type' :: PreparedQueryTemplate s -> TF.Attr s P.Text)
               (\s a -> s { _type' = a } :: PreparedQueryTemplate s)

-- | @services_services@ nested settings.
data ServicesServices s = ServicesServices'
    deriving (P.Show, P.Eq, P.Generic)

newServicesServices
    :: ServicesServices s
newServicesServices =
    ServicesServices'

instance P.Hashable  (ServicesServices s)
instance TF.IsValue  (ServicesServices s)
instance TF.IsObject (ServicesServices s) where
    toObject ServicesServices' = []

instance TF.IsValid (ServicesServices s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ServicesServices s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @agent_self_telemetry@ nested settings.
data AgentSelfTelemetry s = AgentSelfTelemetry'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfTelemetry
    :: AgentSelfTelemetry s
newAgentSelfTelemetry =
    AgentSelfTelemetry'

instance P.Hashable  (AgentSelfTelemetry s)
instance TF.IsValue  (AgentSelfTelemetry s)
instance TF.IsObject (AgentSelfTelemetry s) where
    toObject AgentSelfTelemetry' = []

instance TF.IsValid (AgentSelfTelemetry s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedCirconusApiApp (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusApiApp x = TF.compute (TF.refKey x) "circonus_api_app"

instance s ~ s' => P.HasComputedCirconusApiToken (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusApiToken x = TF.compute (TF.refKey x) "circonus_api_token"

instance s ~ s' => P.HasComputedCirconusApiUrl (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusApiUrl x = TF.compute (TF.refKey x) "circonus_api_url"

instance s ~ s' => P.HasComputedCirconusBrokerId (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusBrokerId x = TF.compute (TF.refKey x) "circonus_broker_id"

instance s ~ s' => P.HasComputedCirconusCheckId (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusCheckId x = TF.compute (TF.refKey x) "circonus_check_id"

instance s ~ s' => P.HasComputedCirconusCheckTags (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusCheckTags x = TF.compute (TF.refKey x) "circonus_check_tags"

instance s ~ s' => P.HasComputedCirconusDisplayName (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusDisplayName x = TF.compute (TF.refKey x) "circonus_display_name"

instance s ~ s' => P.HasComputedCirconusForceMetricActivation (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Bool) where
    computedCirconusForceMetricActivation x = TF.compute (TF.refKey x) "circonus_force_metric_activation"

instance s ~ s' => P.HasComputedCirconusInstanceId (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusInstanceId x = TF.compute (TF.refKey x) "circonus_instance_id"

instance s ~ s' => P.HasComputedCirconusSearchTag (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusSearchTag x = TF.compute (TF.refKey x) "circonus_search_tag"

instance s ~ s' => P.HasComputedCirconusSelectTag (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusSelectTag x = TF.compute (TF.refKey x) "circonus_select_tag"

instance s ~ s' => P.HasComputedCirconusSubmissionInterval (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusSubmissionInterval x = TF.compute (TF.refKey x) "circonus_submission_interval"

instance s ~ s' => P.HasComputedCirconusSubmissionUrl (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedCirconusSubmissionUrl x = TF.compute (TF.refKey x) "circonus_submission_url"

instance s ~ s' => P.HasComputedDogstatsdAddr (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedDogstatsdAddr x = TF.compute (TF.refKey x) "dogstatsd_addr"

instance s ~ s' => P.HasComputedDogstatsdTags (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedDogstatsdTags x = TF.compute (TF.refKey x) "dogstatsd_tags"

instance s ~ s' => P.HasComputedEnableHostname (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedEnableHostname x = TF.compute (TF.refKey x) "enable_hostname"

instance s ~ s' => P.HasComputedStatsdAddr (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedStatsdAddr x = TF.compute (TF.refKey x) "statsd_addr"

instance s ~ s' => P.HasComputedStatsiteAddr (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedStatsiteAddr x = TF.compute (TF.refKey x) "statsite_addr"

instance s ~ s' => P.HasComputedStatsitePrefix (TF.Ref s' (AgentSelfTelemetry s)) (TF.Attr s P.Text) where
    computedStatsitePrefix x = TF.compute (TF.refKey x) "statsite_prefix"

-- | @catalog_entry_service@ nested settings.
data CatalogEntryService s = CatalogEntryService'
    { _address :: TF.Attr s P.Text
    -- ^ @address@ - (Optional, Forces New)
    --
    , _name    :: TF.Attr s P.Text
    -- ^ @name@ - (Required, Forces New)
    --
    , _port    :: TF.Attr s P.Integer
    -- ^ @port@ - (Optional, Forces New)
    --
    , _tags    :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @tags@ - (Optional, Forces New)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newCatalogEntryService
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> CatalogEntryService s
newCatalogEntryService _name =
    CatalogEntryService'
        { _address = TF.Nil
        , _name = _name
        , _port = TF.Nil
        , _tags = TF.Nil
        }

instance P.Hashable  (CatalogEntryService s)
instance TF.IsValue  (CatalogEntryService s)
instance TF.IsObject (CatalogEntryService s) where
    toObject CatalogEntryService'{..} = P.catMaybes
        [ TF.assign "address" <$> TF.attribute _address
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "port" <$> TF.attribute _port
        , TF.assign "tags" <$> TF.attribute _tags
        ]

instance TF.IsValid (CatalogEntryService s) where
    validator = P.mempty

instance P.HasAddress (CatalogEntryService s) (TF.Attr s P.Text) where
    address =
        P.lens (_address :: CatalogEntryService s -> TF.Attr s P.Text)
               (\s a -> s { _address = a } :: CatalogEntryService s)

instance P.HasName (CatalogEntryService s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CatalogEntryService s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: CatalogEntryService s)

instance P.HasPort (CatalogEntryService s) (TF.Attr s P.Integer) where
    port =
        P.lens (_port :: CatalogEntryService s -> TF.Attr s P.Integer)
               (\s a -> s { _port = a } :: CatalogEntryService s)

instance P.HasTags (CatalogEntryService s) (TF.Attr s [TF.Attr s P.Text]) where
    tags =
        P.lens (_tags :: CatalogEntryService s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _tags = a } :: CatalogEntryService s)

instance s ~ s' => P.HasComputedId (TF.Ref s' (CatalogEntryService s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

-- | @agent_self_performance@ nested settings.
data AgentSelfPerformance s = AgentSelfPerformance'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfPerformance
    :: AgentSelfPerformance s
newAgentSelfPerformance =
    AgentSelfPerformance'

instance P.Hashable  (AgentSelfPerformance s)
instance TF.IsValue  (AgentSelfPerformance s)
instance TF.IsObject (AgentSelfPerformance s) where
    toObject AgentSelfPerformance' = []

instance TF.IsValid (AgentSelfPerformance s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedRaftMultiplier (TF.Ref s' (AgentSelfPerformance s)) (TF.Attr s P.Text) where
    computedRaftMultiplier x = TF.compute (TF.refKey x) "raft_multiplier"

-- | @catalog_nodes_query_options@ nested settings.
data CatalogNodesQueryOptions s = CatalogNodesQueryOptions'
    { _allowStale        :: TF.Attr s P.Bool
    -- ^ @allow_stale@ - (Optional)
    --
    , _datacenter        :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _near              :: TF.Attr s P.Text
    -- ^ @near@ - (Optional)
    --
    , _nodeMeta          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @node_meta@ - (Optional)
    --
    , _requireConsistent :: TF.Attr s P.Bool
    -- ^ @require_consistent@ - (Optional)
    --
    , _token             :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    , _waitIndex         :: TF.Attr s P.Integer
    -- ^ @wait_index@ - (Optional)
    --
    , _waitTime          :: TF.Attr s P.Text
    -- ^ @wait_time@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newCatalogNodesQueryOptions
    :: CatalogNodesQueryOptions s
newCatalogNodesQueryOptions =
    CatalogNodesQueryOptions'
        { _allowStale = TF.value P.True
        , _datacenter = TF.Nil
        , _near = TF.Nil
        , _nodeMeta = TF.Nil
        , _requireConsistent = TF.value P.False
        , _token = TF.Nil
        , _waitIndex = TF.Nil
        , _waitTime = TF.Nil
        }

instance P.Hashable  (CatalogNodesQueryOptions s)
instance TF.IsValue  (CatalogNodesQueryOptions s)
instance TF.IsObject (CatalogNodesQueryOptions s) where
    toObject CatalogNodesQueryOptions'{..} = P.catMaybes
        [ TF.assign "allow_stale" <$> TF.attribute _allowStale
        , TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "near" <$> TF.attribute _near
        , TF.assign "node_meta" <$> TF.attribute _nodeMeta
        , TF.assign "require_consistent" <$> TF.attribute _requireConsistent
        , TF.assign "token" <$> TF.attribute _token
        , TF.assign "wait_index" <$> TF.attribute _waitIndex
        , TF.assign "wait_time" <$> TF.attribute _waitTime
        ]

instance TF.IsValid (CatalogNodesQueryOptions s) where
    validator = P.mempty

instance P.HasAllowStale (CatalogNodesQueryOptions s) (TF.Attr s P.Bool) where
    allowStale =
        P.lens (_allowStale :: CatalogNodesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _allowStale = a } :: CatalogNodesQueryOptions s)

instance P.HasDatacenter (CatalogNodesQueryOptions s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: CatalogNodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a } :: CatalogNodesQueryOptions s)

instance P.HasNear (CatalogNodesQueryOptions s) (TF.Attr s P.Text) where
    near =
        P.lens (_near :: CatalogNodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _near = a } :: CatalogNodesQueryOptions s)

instance P.HasNodeMeta (CatalogNodesQueryOptions s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    nodeMeta =
        P.lens (_nodeMeta :: CatalogNodesQueryOptions s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _nodeMeta = a } :: CatalogNodesQueryOptions s)

instance P.HasRequireConsistent (CatalogNodesQueryOptions s) (TF.Attr s P.Bool) where
    requireConsistent =
        P.lens (_requireConsistent :: CatalogNodesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _requireConsistent = a } :: CatalogNodesQueryOptions s)

instance P.HasToken (CatalogNodesQueryOptions s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: CatalogNodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _token = a } :: CatalogNodesQueryOptions s)

instance P.HasWaitIndex (CatalogNodesQueryOptions s) (TF.Attr s P.Integer) where
    waitIndex =
        P.lens (_waitIndex :: CatalogNodesQueryOptions s -> TF.Attr s P.Integer)
               (\s a -> s { _waitIndex = a } :: CatalogNodesQueryOptions s)

instance P.HasWaitTime (CatalogNodesQueryOptions s) (TF.Attr s P.Text) where
    waitTime =
        P.lens (_waitTime :: CatalogNodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _waitTime = a } :: CatalogNodesQueryOptions s)

-- | @agent_self_addresses@ nested settings.
data AgentSelfAddresses s = AgentSelfAddresses'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfAddresses
    :: AgentSelfAddresses s
newAgentSelfAddresses =
    AgentSelfAddresses'

instance P.Hashable  (AgentSelfAddresses s)
instance TF.IsValue  (AgentSelfAddresses s)
instance TF.IsObject (AgentSelfAddresses s) where
    toObject AgentSelfAddresses' = []

instance TF.IsValid (AgentSelfAddresses s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedDns (TF.Ref s' (AgentSelfAddresses s)) (TF.Attr s P.Text) where
    computedDns x = TF.compute (TF.refKey x) "dns"

instance s ~ s' => P.HasComputedHttp (TF.Ref s' (AgentSelfAddresses s)) (TF.Attr s P.Text) where
    computedHttp x = TF.compute (TF.refKey x) "http"

instance s ~ s' => P.HasComputedHttps (TF.Ref s' (AgentSelfAddresses s)) (TF.Attr s P.Text) where
    computedHttps x = TF.compute (TF.refKey x) "https"

instance s ~ s' => P.HasComputedRpc (TF.Ref s' (AgentSelfAddresses s)) (TF.Attr s P.Text) where
    computedRpc x = TF.compute (TF.refKey x) "rpc"

-- | @prepared_query_failover@ nested settings.
data PreparedQueryFailover s = PreparedQueryFailover'
    { _datacenters :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @datacenters@ - (Optional)
    --
    , _nearestN    :: TF.Attr s P.Integer
    -- ^ @nearest_n@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newPreparedQueryFailover
    :: PreparedQueryFailover s
newPreparedQueryFailover =
    PreparedQueryFailover'
        { _datacenters = TF.Nil
        , _nearestN = TF.Nil
        }

instance P.Hashable  (PreparedQueryFailover s)
instance TF.IsValue  (PreparedQueryFailover s)
instance TF.IsObject (PreparedQueryFailover s) where
    toObject PreparedQueryFailover'{..} = P.catMaybes
        [ TF.assign "datacenters" <$> TF.attribute _datacenters
        , TF.assign "nearest_n" <$> TF.attribute _nearestN
        ]

instance TF.IsValid (PreparedQueryFailover s) where
    validator = P.mempty

instance P.HasDatacenters (PreparedQueryFailover s) (TF.Attr s [TF.Attr s P.Text]) where
    datacenters =
        P.lens (_datacenters :: PreparedQueryFailover s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _datacenters = a } :: PreparedQueryFailover s)

instance P.HasNearestN (PreparedQueryFailover s) (TF.Attr s P.Integer) where
    nearestN =
        P.lens (_nearestN :: PreparedQueryFailover s -> TF.Attr s P.Integer)
               (\s a -> s { _nearestN = a } :: PreparedQueryFailover s)

-- | @agent_self_retry_join_ec2@ nested settings.
data AgentSelfRetryJoinEc2 s = AgentSelfRetryJoinEc2'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfRetryJoinEc2
    :: AgentSelfRetryJoinEc2 s
newAgentSelfRetryJoinEc2 =
    AgentSelfRetryJoinEc2'

instance P.Hashable  (AgentSelfRetryJoinEc2 s)
instance TF.IsValue  (AgentSelfRetryJoinEc2 s)
instance TF.IsObject (AgentSelfRetryJoinEc2 s) where
    toObject AgentSelfRetryJoinEc2' = []

instance TF.IsValid (AgentSelfRetryJoinEc2 s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedRegion (TF.Ref s' (AgentSelfRetryJoinEc2 s)) (TF.Attr s P.Text) where
    computedRegion x = TF.compute (TF.refKey x) "region"

instance s ~ s' => P.HasComputedTagKey (TF.Ref s' (AgentSelfRetryJoinEc2 s)) (TF.Attr s P.Text) where
    computedTagKey x = TF.compute (TF.refKey x) "tag_key"

instance s ~ s' => P.HasComputedTagValue (TF.Ref s' (AgentSelfRetryJoinEc2 s)) (TF.Attr s P.Text) where
    computedTagValue x = TF.compute (TF.refKey x) "tag_value"

-- | @catalog_services_services@ nested settings.
data CatalogServicesServices s = CatalogServicesServices'
    deriving (P.Show, P.Eq, P.Generic)

newCatalogServicesServices
    :: CatalogServicesServices s
newCatalogServicesServices =
    CatalogServicesServices'

instance P.Hashable  (CatalogServicesServices s)
instance TF.IsValue  (CatalogServicesServices s)
instance TF.IsObject (CatalogServicesServices s) where
    toObject CatalogServicesServices' = []

instance TF.IsValid (CatalogServicesServices s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedTags (TF.Ref s' (CatalogServicesServices s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedTags x = TF.compute (TF.refKey x) "tags"

-- | @prepared_query_dns@ nested settings.
data PreparedQueryDns s = PreparedQueryDns'
    { _ttl :: TF.Attr s P.Text
    -- ^ @ttl@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newPreparedQueryDns
    :: PreparedQueryDns s
newPreparedQueryDns =
    PreparedQueryDns'
        { _ttl = TF.Nil
        }

instance P.Hashable  (PreparedQueryDns s)
instance TF.IsValue  (PreparedQueryDns s)
instance TF.IsObject (PreparedQueryDns s) where
    toObject PreparedQueryDns'{..} = P.catMaybes
        [ TF.assign "ttl" <$> TF.attribute _ttl
        ]

instance TF.IsValid (PreparedQueryDns s) where
    validator = P.mempty

instance P.HasTtl (PreparedQueryDns s) (TF.Attr s P.Text) where
    ttl =
        P.lens (_ttl :: PreparedQueryDns s -> TF.Attr s P.Text)
               (\s a -> s { _ttl = a } :: PreparedQueryDns s)

-- | @agent_self_unix_sockets@ nested settings.
data AgentSelfUnixSockets s = AgentSelfUnixSockets'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfUnixSockets
    :: AgentSelfUnixSockets s
newAgentSelfUnixSockets =
    AgentSelfUnixSockets'

instance P.Hashable  (AgentSelfUnixSockets s)
instance TF.IsValue  (AgentSelfUnixSockets s)
instance TF.IsObject (AgentSelfUnixSockets s) where
    toObject AgentSelfUnixSockets' = []

instance TF.IsValid (AgentSelfUnixSockets s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedGroup (TF.Ref s' (AgentSelfUnixSockets s)) (TF.Attr s P.Text) where
    computedGroup x = TF.compute (TF.refKey x) "group"

instance s ~ s' => P.HasComputedMode (TF.Ref s' (AgentSelfUnixSockets s)) (TF.Attr s P.Text) where
    computedMode x = TF.compute (TF.refKey x) "mode"

instance s ~ s' => P.HasComputedUser (TF.Ref s' (AgentSelfUnixSockets s)) (TF.Attr s P.Text) where
    computedUser x = TF.compute (TF.refKey x) "user"

-- | @agent_self_retry_join_gce@ nested settings.
data AgentSelfRetryJoinGce s = AgentSelfRetryJoinGce'
    deriving (P.Show, P.Eq, P.Generic)

newAgentSelfRetryJoinGce
    :: AgentSelfRetryJoinGce s
newAgentSelfRetryJoinGce =
    AgentSelfRetryJoinGce'

instance P.Hashable  (AgentSelfRetryJoinGce s)
instance TF.IsValue  (AgentSelfRetryJoinGce s)
instance TF.IsObject (AgentSelfRetryJoinGce s) where
    toObject AgentSelfRetryJoinGce' = []

instance TF.IsValid (AgentSelfRetryJoinGce s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedCredentialsFile (TF.Ref s' (AgentSelfRetryJoinGce s)) (TF.Attr s P.Text) where
    computedCredentialsFile x = TF.compute (TF.refKey x) "credentials_file"

instance s ~ s' => P.HasComputedProjectName (TF.Ref s' (AgentSelfRetryJoinGce s)) (TF.Attr s P.Text) where
    computedProjectName x = TF.compute (TF.refKey x) "project_name"

instance s ~ s' => P.HasComputedTagValue (TF.Ref s' (AgentSelfRetryJoinGce s)) (TF.Attr s P.Text) where
    computedTagValue x = TF.compute (TF.refKey x) "tag_value"

instance s ~ s' => P.HasComputedZonePattern (TF.Ref s' (AgentSelfRetryJoinGce s)) (TF.Attr s P.Text) where
    computedZonePattern x = TF.compute (TF.refKey x) "zone_pattern"

-- | @nodes_query_options@ nested settings.
data NodesQueryOptions s = NodesQueryOptions'
    { _allowStale        :: TF.Attr s P.Bool
    -- ^ @allow_stale@ - (Optional)
    --
    , _datacenter        :: TF.Attr s P.Text
    -- ^ @datacenter@ - (Optional)
    --
    , _near              :: TF.Attr s P.Text
    -- ^ @near@ - (Optional)
    --
    , _nodeMeta          :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @node_meta@ - (Optional)
    --
    , _requireConsistent :: TF.Attr s P.Bool
    -- ^ @require_consistent@ - (Optional)
    --
    , _token             :: TF.Attr s P.Text
    -- ^ @token@ - (Optional)
    --
    , _waitIndex         :: TF.Attr s P.Integer
    -- ^ @wait_index@ - (Optional)
    --
    , _waitTime          :: TF.Attr s P.Text
    -- ^ @wait_time@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

newNodesQueryOptions
    :: NodesQueryOptions s
newNodesQueryOptions =
    NodesQueryOptions'
        { _allowStale = TF.value P.True
        , _datacenter = TF.Nil
        , _near = TF.Nil
        , _nodeMeta = TF.Nil
        , _requireConsistent = TF.value P.False
        , _token = TF.Nil
        , _waitIndex = TF.Nil
        , _waitTime = TF.Nil
        }

instance P.Hashable  (NodesQueryOptions s)
instance TF.IsValue  (NodesQueryOptions s)
instance TF.IsObject (NodesQueryOptions s) where
    toObject NodesQueryOptions'{..} = P.catMaybes
        [ TF.assign "allow_stale" <$> TF.attribute _allowStale
        , TF.assign "datacenter" <$> TF.attribute _datacenter
        , TF.assign "near" <$> TF.attribute _near
        , TF.assign "node_meta" <$> TF.attribute _nodeMeta
        , TF.assign "require_consistent" <$> TF.attribute _requireConsistent
        , TF.assign "token" <$> TF.attribute _token
        , TF.assign "wait_index" <$> TF.attribute _waitIndex
        , TF.assign "wait_time" <$> TF.attribute _waitTime
        ]

instance TF.IsValid (NodesQueryOptions s) where
    validator = P.mempty

instance P.HasAllowStale (NodesQueryOptions s) (TF.Attr s P.Bool) where
    allowStale =
        P.lens (_allowStale :: NodesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _allowStale = a } :: NodesQueryOptions s)

instance P.HasDatacenter (NodesQueryOptions s) (TF.Attr s P.Text) where
    datacenter =
        P.lens (_datacenter :: NodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _datacenter = a } :: NodesQueryOptions s)

instance P.HasNear (NodesQueryOptions s) (TF.Attr s P.Text) where
    near =
        P.lens (_near :: NodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _near = a } :: NodesQueryOptions s)

instance P.HasNodeMeta (NodesQueryOptions s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    nodeMeta =
        P.lens (_nodeMeta :: NodesQueryOptions s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _nodeMeta = a } :: NodesQueryOptions s)

instance P.HasRequireConsistent (NodesQueryOptions s) (TF.Attr s P.Bool) where
    requireConsistent =
        P.lens (_requireConsistent :: NodesQueryOptions s -> TF.Attr s P.Bool)
               (\s a -> s { _requireConsistent = a } :: NodesQueryOptions s)

instance P.HasToken (NodesQueryOptions s) (TF.Attr s P.Text) where
    token =
        P.lens (_token :: NodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _token = a } :: NodesQueryOptions s)

instance P.HasWaitIndex (NodesQueryOptions s) (TF.Attr s P.Integer) where
    waitIndex =
        P.lens (_waitIndex :: NodesQueryOptions s -> TF.Attr s P.Integer)
               (\s a -> s { _waitIndex = a } :: NodesQueryOptions s)

instance P.HasWaitTime (NodesQueryOptions s) (TF.Attr s P.Text) where
    waitTime =
        P.lens (_waitTime :: NodesQueryOptions s -> TF.Attr s P.Text)
               (\s a -> s { _waitTime = a } :: NodesQueryOptions s)

-- | @service_tagged_addresses@ nested settings.
data ServiceTaggedAddresses s = ServiceTaggedAddresses'
    deriving (P.Show, P.Eq, P.Generic)

newServiceTaggedAddresses
    :: ServiceTaggedAddresses s
newServiceTaggedAddresses =
    ServiceTaggedAddresses'

instance P.Hashable  (ServiceTaggedAddresses s)
instance TF.IsValue  (ServiceTaggedAddresses s)
instance TF.IsObject (ServiceTaggedAddresses s) where
    toObject ServiceTaggedAddresses' = []

instance TF.IsValid (ServiceTaggedAddresses s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedLan (TF.Ref s' (ServiceTaggedAddresses s)) (TF.Attr s P.Text) where
    computedLan x = TF.compute (TF.refKey x) "lan"

instance s ~ s' => P.HasComputedWan (TF.Ref s' (ServiceTaggedAddresses s)) (TF.Attr s P.Text) where
    computedWan x = TF.compute (TF.refKey x) "wan"
