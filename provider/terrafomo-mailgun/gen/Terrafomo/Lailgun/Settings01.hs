-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Lailgun.Settings01
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Lailgun.Settings01
    (
    -- ** receiving_records
      ReceivingRecordsSetting (..)
    , newReceivingRecordsSetting

    -- ** sending_records
    , SendingRecordsSetting (..)
    , newSendingRecordsSetting

    ) where

import Data.Functor ((<$>))

import GHC.Base (($))


import qualified Data.List.NonEmpty      as P
import qualified Data.Map.Strict         as P
import qualified Data.Map.Strict         as Map
import qualified Data.Maybe              as P
import qualified Data.Monoid             as P
import qualified Data.Text               as P
import qualified GHC.Generics            as P
import qualified Lens.Micro              as P
import qualified Prelude                 as P
import qualified Terrafomo.Attribute     as TF
import qualified Terrafomo.HCL           as TF
import qualified Terrafomo.Lailgun.Lens  as P
import qualified Terrafomo.Lailgun.Types as P
import qualified Terrafomo.Name          as TF
import qualified Terrafomo.Validator     as TF

-- | @receiving_records@ nested settings.
data ReceivingRecordsSetting s = ReceivingRecordsSetting'
    deriving (P.Show, P.Eq, P.Ord)

-- | Construct a new @receiving_records@ settings value.
newReceivingRecordsSetting
    :: ReceivingRecordsSetting s
newReceivingRecordsSetting =
    ReceivingRecordsSetting'

instance TF.IsValue  (ReceivingRecordsSetting s)
instance TF.IsObject (ReceivingRecordsSetting s) where
    toObject ReceivingRecordsSetting' = []

instance TF.IsValid (ReceivingRecordsSetting s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedPriority (TF.Ref s' (ReceivingRecordsSetting s)) (TF.Attr s P.Text) where
    computedPriority x = TF.compute (TF.refKey x) "priority"

instance s ~ s' => P.HasComputedRecordType (TF.Ref s' (ReceivingRecordsSetting s)) (TF.Attr s P.Text) where
    computedRecordType x = TF.compute (TF.refKey x) "record_type"

instance s ~ s' => P.HasComputedValid (TF.Ref s' (ReceivingRecordsSetting s)) (TF.Attr s P.Text) where
    computedValid x = TF.compute (TF.refKey x) "valid"

instance s ~ s' => P.HasComputedValue (TF.Ref s' (ReceivingRecordsSetting s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "value"

-- | @sending_records@ nested settings.
data SendingRecordsSetting s = SendingRecordsSetting'
    deriving (P.Show, P.Eq, P.Ord)

-- | Construct a new @sending_records@ settings value.
newSendingRecordsSetting
    :: SendingRecordsSetting s
newSendingRecordsSetting =
    SendingRecordsSetting'

instance TF.IsValue  (SendingRecordsSetting s)
instance TF.IsObject (SendingRecordsSetting s) where
    toObject SendingRecordsSetting' = []

instance TF.IsValid (SendingRecordsSetting s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedName (TF.Ref s' (SendingRecordsSetting s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedRecordType (TF.Ref s' (SendingRecordsSetting s)) (TF.Attr s P.Text) where
    computedRecordType x = TF.compute (TF.refKey x) "record_type"

instance s ~ s' => P.HasComputedValid (TF.Ref s' (SendingRecordsSetting s)) (TF.Attr s P.Text) where
    computedValid x = TF.compute (TF.refKey x) "valid"

instance s ~ s' => P.HasComputedValue (TF.Ref s' (SendingRecordsSetting s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "value"