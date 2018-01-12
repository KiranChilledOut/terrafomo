module Terraform.Format
    (
    -- * Composition
       (%) -- FIXME: re-export from Prelude?

    -- * Conversions
    , Format.format
    , Format.sformat
    , nformat

    -- * Formatters
    -- ** Terraform Syntax
    , name
    -- ** Strings
    , Format.text
    , Format.stext
    , Format.char
    , Format.shown
    -- ** Numbers
    , Format.int
    , intp
    , Format.float
    -- ** Bytes
    , Format.bytes
    ) where

import Data.Text (Text)

import Formatting (Format, (%), (%.))

import Terraform.Syntax.Name

import qualified Data.Text              as Text
import qualified Data.Text.Lazy         as LText
import qualified Data.Text.Lazy.Builder as Build
import qualified Formatting             as Format
-- import qualified Formatting.Formatters  as Export
import qualified Terraform.Syntax.Name as Name

-- Conversions

-- | Run the formatter and return a Terraform 'Name'.
--
-- > -- format("web-%03d", count.index + 1)
-- > nformat ("web-" % intp 3) (count + 1)
nformat :: Format Name a -> a
nformat m = Format.runFormat m (Name . LText.toStrict . Build.toLazyText)

-- -- |
-- -- > -- formatlist("https://%s:%s/", aws_instance.foo.*.public_dns, var.port)
-- -- > formatlist (...)
-- formatlist :: Format [Text] a -> a
-- formatlist = undefined

-- Formatters

-- | Output a Terraform 'Name'.
name :: Format r (Name -> r)
name = Format.later (Build.fromText . Name.fromName)

-- | Output a zero-padded 'Integral'.
intp :: Integral a => Int -> Format r (a -> r)
intp n = Format.left n '0' %. Format.int

-- -- -- | Output an AWS 'Region'. -- FIXME: into AWS namespace?
-- -- region = undefined
-- format("web-%03d", count.index + 1).