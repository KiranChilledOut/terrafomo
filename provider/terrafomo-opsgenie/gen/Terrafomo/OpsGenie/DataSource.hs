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
-- Module      : Terrafomo.OpsGenie.DataSource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.OpsGenie.DataSource
    (
    -- * Types
      UserDataSource (..)
    , userDataSource

    -- * Overloaded Fields
    -- ** Arguments
    , HasUsername (..)

    -- ** Computed Attributes
    , HasComputedFullName (..)
    , HasComputedRole (..)
    ) where

import Data.Maybe (catMaybes)
import Data.Text  (Text)

import GHC.Base (Eq, ($), (.))
import GHC.Show (Show)

import Lens.Micro (Getting, Lens', lens, to)

import qualified Data.Word                   as TF
import qualified GHC.Base                    as TF
import qualified Numeric.Natural             as TF
import qualified Terrafomo.Attribute         as TF
import qualified Terrafomo.DataSource        as TF
import qualified Terrafomo.HCL               as TF
import qualified Terrafomo.IP                as TF
import qualified Terrafomo.Meta              as TF
import qualified Terrafomo.Name              as TF
import qualified Terrafomo.OpsGenie.Provider as TF
import qualified Terrafomo.OpsGenie.Types    as TF
import qualified Terrafomo.Resource          as TF

{- | The @opsgenie_user@ OpsGenie datasource.

Use this data source to get information about a specific user within
OpsGenie.
-}
data UserDataSource s = UserDataSource {
      _username :: !(TF.Attribute s Text)
    {- ^ (Required) The username (email) to use to find a user in OpsGenie. -}
    } deriving (Show, Eq)

instance TF.ToHCL (UserDataSource s) where
    toHCL UserDataSource{..} = TF.block $ catMaybes
        [ TF.attribute "username" _username
        ]

instance HasUsername (UserDataSource s) s Text where
    username =
        lens (_username :: UserDataSource s -> TF.Attribute s Text)
            (\s a -> s { _username = a } :: UserDataSource s)

instance HasComputedFullName (UserDataSource s) Text

instance HasComputedRole (UserDataSource s) Text

userDataSource :: TF.DataSource TF.OpsGenie (UserDataSource s)
userDataSource =
    TF.newDataSource "opsgenie_user" $
        UserDataSource {
              _username = TF.Nil
            }

class HasUsername a s b | a -> s b where
    username :: Lens' a (TF.Attribute s b)

instance HasUsername a s b => HasUsername (TF.DataSource p a) s b where
    username = TF.configuration . username

class HasComputedFullName a b | a -> b where
    computedFullName
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedFullName =
        to (\x -> TF.Computed (TF.referenceKey x) "full_name")

class HasComputedRole a b | a -> b where
    computedRole
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedRole =
        to (\x -> TF.Computed (TF.referenceKey x) "role")
