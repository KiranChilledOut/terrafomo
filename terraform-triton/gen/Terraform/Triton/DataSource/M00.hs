-- This module is auto-generated.

module Terraform.Triton.DataSource.M00 where

import Data.Text (Text)

import GHC.Generics (Generic)

import Terraform.Triton.Provider (Triton, newDataSource)
import Terraform.Triton.Types
import Terraform.Syntax.Attribute (Attr, Computed)

import qualified Terraform.Syntax.TH as TH

-- | The @triton_image@ Triton datasource.
data Image_DataSource = Image_DataSource
    { most_recent :: !(Attr Text)
      {- ^ - (bool) If more than one result is returned, use the most recent Image. -}
    , name :: !(Attr Text)
      {- ^ - (string) The name of the image -}
    , os :: !(Attr Text)
      {- ^ - (string) The underlying operating system for the image -}
    , owner :: !(Attr Text)
      {- ^ - (string) The UUID of the account which owns the image -}
    , public :: !(Attr Text)
      {- ^ - (boolean) Whether to return public as well as private images -}
    , state :: !(Attr Text)
      {- ^ - (string) The state of the image. By default, only @active@ images are shown. Must be one of: @active@ , @unactivated@ , @disabled@ , @creating@ , @failed@ or @all@ , though the default is sufficient in almost every case. -}
    , type_ :: !(Attr Text)
      {- ^ - (string) The image type. Must be one of: @zone-dataset@ , @lx-dataset@ , @zvol@ , @docker@ or @other@ . -}
    , version :: !(Attr Text)
      {- ^ - (string) The version for the image -}
    } deriving (Show, Eq, Generic)

type instance Computed Image_DataSource
    = '[]

$(TH.makeDataSource
    "triton_image"
    ''Triton
    'newDataSource
    ''Image_DataSource)
