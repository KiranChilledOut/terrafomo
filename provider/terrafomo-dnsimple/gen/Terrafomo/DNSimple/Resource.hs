-- This module is auto-generated.

{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE RecordWildCards        #-}
{-# LANGUAGE ScopedTypeVariables    #-}
{-# LANGUAGE TypeFamilies           #-}
{-# LANGUAGE UndecidableInstances   #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.DNSimple.Resource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.DNSimple.Resource
    (
    -- * Types
      ResourceRecord (..)
    , resourceRecord

    -- * Overloaded Fields
    -- ** Arguments
    , P.HasDomain (..)
    , P.HasName (..)
    , P.HasPriority (..)
    , P.HasTtl (..)
    , P.HasType' (..)
    , P.HasValue (..)

    -- ** Computed Attributes
    , P.HasComputedDomain (..)
    , P.HasComputedDomainId (..)
    , P.HasComputedHostname (..)
    , P.HasComputedId (..)
    , P.HasComputedName (..)
    , P.HasComputedPriority (..)
    , P.HasComputedTtl (..)
    , P.HasComputedType' (..)
    , P.HasComputedValue (..)

    -- * Re-exported Types
    , module P
    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (Eq, ($), (.))
import GHC.Show (Show)

import Lens.Micro (lens)

import Terrafomo.DNSimple.Types as P

import qualified Data.Text                   as P
import qualified Data.Word                   as P
import qualified GHC.Base                    as P
import qualified Numeric.Natural             as P
import qualified Terrafomo.DNSimple.Lens     as P
import qualified Terrafomo.DNSimple.Provider as P
import qualified Terrafomo.IP                as P

import qualified Terrafomo.Attribute as TF
import qualified Terrafomo.HCL       as TF
import qualified Terrafomo.Name      as TF
import qualified Terrafomo.Provider  as TF
import qualified Terrafomo.Schema    as TF

{- | The @dnsimple_record@ DNSimple resource.

Provides a DNSimple record resource.
-}
data ResourceRecord s = ResourceRecord {
      _domain   :: !(TF.Attr s P.Text)
    {- ^ (Required) The domain to add the record to -}
    , _name     :: !(TF.Attr s P.Text)
    {- ^ (Required) The name of the record -}
    , _priority :: !(TF.Attr s P.Text)
    {- ^ (Optional) The priority of the record - only useful for some record types -}
    , _ttl      :: !(TF.Attr s P.Text)
    {- ^ (Optional) The TTL of the record -}
    , _type'    :: !(TF.Attr s P.Text)
    {- ^ (Required) The type of the record -}
    , _value    :: !(TF.Attr s P.Text)
    {- ^ (Required) The value of the record -}
    } deriving (Show, Eq)

instance TF.ToHCL (ResourceRecord s) where
    toHCL ResourceRecord{..} = TF.inline $ catMaybes
        [ TF.assign "domain" <$> TF.attribute _domain
        , TF.assign "name" <$> TF.attribute _name
        , TF.assign "priority" <$> TF.attribute _priority
        , TF.assign "ttl" <$> TF.attribute _ttl
        , TF.assign "type" <$> TF.attribute _type'
        , TF.assign "value" <$> TF.attribute _value
        ]

instance P.HasDomain (ResourceRecord s) (TF.Attr s P.Text) where
    domain =
        lens (_domain :: ResourceRecord s -> TF.Attr s P.Text)
             (\s a -> s { _domain = a } :: ResourceRecord s)

instance P.HasName (ResourceRecord s) (TF.Attr s P.Text) where
    name =
        lens (_name :: ResourceRecord s -> TF.Attr s P.Text)
             (\s a -> s { _name = a } :: ResourceRecord s)

instance P.HasPriority (ResourceRecord s) (TF.Attr s P.Text) where
    priority =
        lens (_priority :: ResourceRecord s -> TF.Attr s P.Text)
             (\s a -> s { _priority = a } :: ResourceRecord s)

instance P.HasTtl (ResourceRecord s) (TF.Attr s P.Text) where
    ttl =
        lens (_ttl :: ResourceRecord s -> TF.Attr s P.Text)
             (\s a -> s { _ttl = a } :: ResourceRecord s)

instance P.HasType' (ResourceRecord s) (TF.Attr s P.Text) where
    type' =
        lens (_type' :: ResourceRecord s -> TF.Attr s P.Text)
             (\s a -> s { _type' = a } :: ResourceRecord s)

instance P.HasValue (ResourceRecord s) (TF.Attr s P.Text) where
    value =
        lens (_value :: ResourceRecord s -> TF.Attr s P.Text)
             (\s a -> s { _value = a } :: ResourceRecord s)

instance s ~ s' => P.HasComputedDomain (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedDomain =
        (_domain :: ResourceRecord s -> TF.Attr s P.Text)
            . TF.refValue

instance s ~ s' => P.HasComputedDomainId (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedDomainId x = TF.compute (TF.refKey x) "domain_id"

instance s ~ s' => P.HasComputedHostname (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedHostname x = TF.compute (TF.refKey x) "hostname"

instance s ~ s' => P.HasComputedId (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "id"

instance s ~ s' => P.HasComputedName (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedPriority (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedPriority x = TF.compute (TF.refKey x) "priority"

instance s ~ s' => P.HasComputedTtl (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedTtl x = TF.compute (TF.refKey x) "ttl"

instance s ~ s' => P.HasComputedType' (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedType' x = TF.compute (TF.refKey x) "type"

instance s ~ s' => P.HasComputedValue (TF.Ref s' (ResourceRecord s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "value"

resourceRecord :: TF.Resource P.DNSimple (ResourceRecord s)
resourceRecord =
    TF.newResource "dnsimple_record" $
        ResourceRecord {
              _domain = TF.Nil
            , _name = TF.Nil
            , _priority = TF.Nil
            , _ttl = TF.Nil
            , _type' = TF.Nil
            , _value = TF.Nil
            }
