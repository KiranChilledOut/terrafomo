-- This module is auto-generated.

{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE PolyKinds              #-}
{-# LANGUAGE RankNTypes             #-}
{-# LANGUAGE RecordWildCards        #-}
{-# LANGUAGE ScopedTypeVariables    #-}
{-# LANGUAGE UndecidableInstances   #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Packet.DataSource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Packet.DataSource
    (
    -- * Types
      PrecreatedIpBlockDataSource (..)
    , precreatedIpBlockDataSource

    -- * Overloaded Fields
    -- ** Arguments
    , HasAddressFamily (..)
    , HasFacility (..)
    , HasProjectId (..)
    , HasPublic (..)

    -- ** Computed Attributes
    , HasComputedCidrNotation (..)
    ) where

import Data.Maybe (catMaybes)
import Data.Text  (Text)

import GHC.Base (Eq, ($), (.))
import GHC.Show (Show)

import Lens.Micro (Getting, Lens', lens, to)

import qualified Data.Word                 as TF
import qualified GHC.Base                  as TF
import qualified Numeric.Natural           as TF
import qualified Terrafomo.Attribute       as TF
import qualified Terrafomo.DataSource      as TF
import qualified Terrafomo.HCL             as TF
import qualified Terrafomo.IP              as TF
import qualified Terrafomo.Meta            as TF
import qualified Terrafomo.Name            as TF
import qualified Terrafomo.Packet.Provider as TF
import qualified Terrafomo.Packet.Types    as TF
import qualified Terrafomo.Resource        as TF

{- | The @packet_precreated_ip_block@ Packet datasource.

Use this data source to get CIDR expression for precreated IPv6 and IPv4
blocks in Packet. You can then use the cidrsubnet TF builtin function to
derive subnets.
-}
data PrecreatedIpBlockDataSource s = PrecreatedIpBlockDataSource {
      _address_family :: !(TF.Attribute s Text)
    {- ^ (Required) 4 or 6, depending on which block you are looking for. -}
    , _facility       :: !(TF.Attribute s Text)
    {- ^ (Required) Facility of the searched block. -}
    , _project_id     :: !(TF.Attribute s Text)
    {- ^ (Required) ID of the project where the searched block should be. -}
    , _public         :: !(TF.Attribute s Text)
    {- ^ (Required) Whether to look for public or private block. -}
    } deriving (Show, Eq)

instance TF.ToHCL (PrecreatedIpBlockDataSource s) where
    toHCL PrecreatedIpBlockDataSource{..} = TF.block $ catMaybes
        [ TF.attribute "address_family" _address_family
        , TF.attribute "facility" _facility
        , TF.attribute "project_id" _project_id
        , TF.attribute "public" _public
        ]

instance HasAddressFamily (PrecreatedIpBlockDataSource s) s Text where
    addressFamily =
        lens (_address_family :: PrecreatedIpBlockDataSource s -> TF.Attribute s Text)
            (\s a -> s { _address_family = a } :: PrecreatedIpBlockDataSource s)

instance HasFacility (PrecreatedIpBlockDataSource s) s Text where
    facility =
        lens (_facility :: PrecreatedIpBlockDataSource s -> TF.Attribute s Text)
            (\s a -> s { _facility = a } :: PrecreatedIpBlockDataSource s)

instance HasProjectId (PrecreatedIpBlockDataSource s) s Text where
    projectId =
        lens (_project_id :: PrecreatedIpBlockDataSource s -> TF.Attribute s Text)
            (\s a -> s { _project_id = a } :: PrecreatedIpBlockDataSource s)

instance HasPublic (PrecreatedIpBlockDataSource s) s Text where
    public =
        lens (_public :: PrecreatedIpBlockDataSource s -> TF.Attribute s Text)
            (\s a -> s { _public = a } :: PrecreatedIpBlockDataSource s)

instance HasComputedCidrNotation (PrecreatedIpBlockDataSource s) Text

precreatedIpBlockDataSource :: TF.DataSource TF.Packet (PrecreatedIpBlockDataSource s)
precreatedIpBlockDataSource =
    TF.newDataSource "packet_precreated_ip_block" $
        PrecreatedIpBlockDataSource {
              _address_family = TF.Nil
            , _facility = TF.Nil
            , _project_id = TF.Nil
            , _public = TF.Nil
            }

class HasAddressFamily a s b | a -> s b where
    addressFamily :: Lens' a (TF.Attribute s b)

instance HasAddressFamily a s b => HasAddressFamily (TF.DataSource p a) s b where
    addressFamily = TF.configuration . addressFamily

class HasFacility a s b | a -> s b where
    facility :: Lens' a (TF.Attribute s b)

instance HasFacility a s b => HasFacility (TF.DataSource p a) s b where
    facility = TF.configuration . facility

class HasProjectId a s b | a -> s b where
    projectId :: Lens' a (TF.Attribute s b)

instance HasProjectId a s b => HasProjectId (TF.DataSource p a) s b where
    projectId = TF.configuration . projectId

class HasPublic a s b | a -> s b where
    public :: Lens' a (TF.Attribute s b)

instance HasPublic a s b => HasPublic (TF.DataSource p a) s b where
    public = TF.configuration . public

class HasComputedCidrNotation a b | a -> b where
    computedCidrNotation
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedCidrNotation =
        to (\x -> TF.Computed (TF.referenceKey x) "cidr_notation")
