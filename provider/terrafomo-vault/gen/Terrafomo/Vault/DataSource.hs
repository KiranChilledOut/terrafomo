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
-- Module      : Terrafomo.Vault.DataSource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Vault.DataSource
    (
    -- * Types
      AwsAccessCredentialsDataSource (..)
    , awsAccessCredentialsDataSource

    , GenericSecretDataSource (..)
    , genericSecretDataSource

    -- * Overloaded Fields
    -- ** Arguments
    , HasBackend (..)
    , HasPath (..)
    , HasRole (..)
    , HasType' (..)

    -- ** Computed Attributes
    , HasComputedAccessKey (..)
    , HasComputedLeaseDuration (..)
    , HasComputedLeaseId (..)
    , HasComputedLeaseRenewable (..)
    , HasComputedLeaseStartTime (..)
    , HasComputedSecretKey (..)
    , HasComputedSecurityToken (..)
    ) where

import Data.Maybe (catMaybes)
import Data.Text  (Text)

import GHC.Base (Eq, ($), (.))
import GHC.Show (Show)

import Lens.Micro (Getting, Lens', lens, to)

import qualified Data.Word                as TF
import qualified GHC.Base                 as TF
import qualified Numeric.Natural          as TF
import qualified Terrafomo.Attribute      as TF
import qualified Terrafomo.DataSource     as TF
import qualified Terrafomo.HCL            as TF
import qualified Terrafomo.IP             as TF
import qualified Terrafomo.Meta           as TF
import qualified Terrafomo.Name           as TF
import qualified Terrafomo.Resource       as TF
import qualified Terrafomo.Vault.Provider as TF
import qualified Terrafomo.Vault.Types    as TF

{- | The @vault_aws_access_credentials@ Vault datasource.

Reads AWS credentials from an AWS secret backend in Vault. ~> Important All
data retrieved from Vault will be written in cleartext to state file
generated by Terraform, will appear in the console output when Terraform
runs, and may be included in plan files if secrets are interpolated into any
resource attributes. Protect these artifacts accordingly. See
<../index.html> for more details.
-}
data AwsAccessCredentialsDataSource s = AwsAccessCredentialsDataSource {
      _backend :: !(TF.Attribute s Text)
    {- ^ (Required) The path to the AWS secret backend to read credentials from, with no leading or trailing @/@ s. -}
    , _role    :: !(TF.Attribute s Text)
    {- ^ (Required) The name of the AWS secret backend role to read credentials from, with no leading or trailing @/@ s. -}
    , _type'   :: !(TF.Attribute s Text)
    {- ^ (Optional) The type of credentials to read. Defaults to @"creds"@ , which just returns an AWS Access Key ID and Secret Key. Can also be set to @"sts"@ , which will return a security token in addition to the keys. -}
    } deriving (Show, Eq)

instance TF.ToHCL (AwsAccessCredentialsDataSource s) where
    toHCL AwsAccessCredentialsDataSource{..} = TF.block $ catMaybes
        [ TF.attribute "backend" _backend
        , TF.attribute "role" _role
        , TF.attribute "type" _type'
        ]

instance HasBackend (AwsAccessCredentialsDataSource s) s Text where
    backend =
        lens (_backend :: AwsAccessCredentialsDataSource s -> TF.Attribute s Text)
            (\s a -> s { _backend = a } :: AwsAccessCredentialsDataSource s)

instance HasRole (AwsAccessCredentialsDataSource s) s Text where
    role =
        lens (_role :: AwsAccessCredentialsDataSource s -> TF.Attribute s Text)
            (\s a -> s { _role = a } :: AwsAccessCredentialsDataSource s)

instance HasType' (AwsAccessCredentialsDataSource s) s Text where
    type' =
        lens (_type' :: AwsAccessCredentialsDataSource s -> TF.Attribute s Text)
            (\s a -> s { _type' = a } :: AwsAccessCredentialsDataSource s)

instance HasComputedAccessKey (AwsAccessCredentialsDataSource s) Text

instance HasComputedLeaseDuration (AwsAccessCredentialsDataSource s) Text

instance HasComputedLeaseId (AwsAccessCredentialsDataSource s) Text

instance HasComputedLeaseRenewable (AwsAccessCredentialsDataSource s) Text

instance HasComputedLeaseStartTime (AwsAccessCredentialsDataSource s) Text

instance HasComputedSecretKey (AwsAccessCredentialsDataSource s) Text

instance HasComputedSecurityToken (AwsAccessCredentialsDataSource s) Text

awsAccessCredentialsDataSource :: TF.DataSource TF.Vault (AwsAccessCredentialsDataSource s)
awsAccessCredentialsDataSource =
    TF.newDataSource "vault_aws_access_credentials" $
        AwsAccessCredentialsDataSource {
              _backend = TF.Nil
            , _role = TF.Nil
            , _type' = TF.Nil
            }

{- | The @vault_generic_secret@ Vault datasource.

Reads arbitrary data from a given path in Vault. This resource is primarily
intended to be used with
<https://www.vaultproject.io/docs/secrets/generic/index.html> , but it is
also compatible with any other Vault endpoint that supports the @vault read@
command. ~> Important All data retrieved from Vault will be written in
cleartext to state file generated by Terraform, will appear in the console
output when Terraform runs, and may be included in plan files if secrets are
interpolated into any resource attributes. Protect these artifacts
accordingly. See <../index.html> for more details.
-}
data GenericSecretDataSource s = GenericSecretDataSource {
      _path :: !(TF.Attribute s Text)
    {- ^ (Required) The full logical path from which to request data. To read data from the "generic" secret backend mounted in Vault by default, this should be prefixed with @secret/@ . Reading from other backends with this data source is possible; consult each backend's documentation to see which endpoints support the @GET@ method. -}
    } deriving (Show, Eq)

instance TF.ToHCL (GenericSecretDataSource s) where
    toHCL GenericSecretDataSource{..} = TF.block $ catMaybes
        [ TF.attribute "path" _path
        ]

instance HasPath (GenericSecretDataSource s) s Text where
    path =
        lens (_path :: GenericSecretDataSource s -> TF.Attribute s Text)
            (\s a -> s { _path = a } :: GenericSecretDataSource s)

genericSecretDataSource :: TF.DataSource TF.Vault (GenericSecretDataSource s)
genericSecretDataSource =
    TF.newDataSource "vault_generic_secret" $
        GenericSecretDataSource {
              _path = TF.Nil
            }

class HasBackend a s b | a -> s b where
    backend :: Lens' a (TF.Attribute s b)

instance HasBackend a s b => HasBackend (TF.DataSource p a) s b where
    backend = TF.configuration . backend

class HasPath a s b | a -> s b where
    path :: Lens' a (TF.Attribute s b)

instance HasPath a s b => HasPath (TF.DataSource p a) s b where
    path = TF.configuration . path

class HasRole a s b | a -> s b where
    role :: Lens' a (TF.Attribute s b)

instance HasRole a s b => HasRole (TF.DataSource p a) s b where
    role = TF.configuration . role

class HasType' a s b | a -> s b where
    type' :: Lens' a (TF.Attribute s b)

instance HasType' a s b => HasType' (TF.DataSource p a) s b where
    type' = TF.configuration . type'

class HasComputedAccessKey a b | a -> b where
    computedAccessKey
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedAccessKey =
        to (\x -> TF.Computed (TF.referenceKey x) "access_key")

class HasComputedLeaseDuration a b | a -> b where
    computedLeaseDuration
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedLeaseDuration =
        to (\x -> TF.Computed (TF.referenceKey x) "lease_duration")

class HasComputedLeaseId a b | a -> b where
    computedLeaseId
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedLeaseId =
        to (\x -> TF.Computed (TF.referenceKey x) "lease_id")

class HasComputedLeaseRenewable a b | a -> b where
    computedLeaseRenewable
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedLeaseRenewable =
        to (\x -> TF.Computed (TF.referenceKey x) "lease_renewable")

class HasComputedLeaseStartTime a b | a -> b where
    computedLeaseStartTime
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedLeaseStartTime =
        to (\x -> TF.Computed (TF.referenceKey x) "lease_start_time")

class HasComputedSecretKey a b | a -> b where
    computedSecretKey
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedSecretKey =
        to (\x -> TF.Computed (TF.referenceKey x) "secret_key")

class HasComputedSecurityToken a b | a -> b where
    computedSecurityToken
        :: forall r s. Getting r (TF.Reference s a) (TF.Attribute s b)
    computedSecurityToken =
        to (\x -> TF.Computed (TF.referenceKey x) "security_token")
