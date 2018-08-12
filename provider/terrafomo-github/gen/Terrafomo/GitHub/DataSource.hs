-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.GitHub.DataSource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.GitHub.DataSource
    (
    -- * DataSource Datatypes
    -- ** github_ip_ranges
      IpRangesData (..)
    , ipRangesData

    -- ** github_repository
    , RepositoryData (..)
    , repositoryData

    -- ** github_team
    , TeamData (..)
    , teamData

    -- ** github_user
    , UserData (..)
    , userData

    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (($))

import Terrafomo.GitHub.Settings

import qualified Data.Hashable             as P
import qualified Data.HashMap.Strict       as P
import qualified Data.List.NonEmpty        as P
import qualified Data.Text                 as P
import qualified GHC.Generics              as P
import qualified Lens.Micro                as P
import qualified Prelude                   as P
import qualified Terrafomo.Attribute       as TF
import qualified Terrafomo.GitHub.Lens     as P
import qualified Terrafomo.GitHub.Provider as P
import qualified Terrafomo.GitHub.Types    as P
import qualified Terrafomo.HCL             as TF
import qualified Terrafomo.Name            as TF
import qualified Terrafomo.Schema          as TF

-- | @github_ip_ranges@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/GitHub/github_ip_ranges terraform documentation>
-- for more information.
data IpRangesData s = IpRangesData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (IpRangesData s) where
    toObject _ = []

ipRangesData
    :: TF.DataSource P.Provider (IpRangesData s)
ipRangesData =
    TF.newDataSource "github_ip_ranges" $
        IpRangesData'

instance s ~ s' => P.HasComputedGit (TF.Ref s' (IpRangesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedGit x = TF.compute (TF.refKey x) "git"

instance s ~ s' => P.HasComputedHooks (TF.Ref s' (IpRangesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedHooks x = TF.compute (TF.refKey x) "hooks"

instance s ~ s' => P.HasComputedImporter (TF.Ref s' (IpRangesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedImporter x = TF.compute (TF.refKey x) "importer"

instance s ~ s' => P.HasComputedPages (TF.Ref s' (IpRangesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedPages x = TF.compute (TF.refKey x) "pages"

-- | @github_repository@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/GitHub/github_repository terraform documentation>
-- for more information.
data RepositoryData s = RepositoryData'
    { _fullName :: TF.Attr s P.Text
    -- ^ @full_name@ - (Optional)
    --
    -- Conflicts with:
    --
    -- * 'name'
    , _name     :: TF.Attr s P.Text
    -- ^ @name@ - (Optional)
    --
    -- Conflicts with:
    --
    -- * 'fullName'
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (RepositoryData s) where
    toObject RepositoryData'{..} = catMaybes
        [ TF.assign "full_name" <$> TF.attribute _fullName
        , TF.assign "name" <$> TF.attribute _name
        ]

repositoryData
    :: TF.DataSource P.Provider (RepositoryData s)
repositoryData =
    TF.newDataSource "github_repository" $
        RepositoryData'
            { _fullName = TF.Nil
            , _name = TF.Nil
            }

instance P.HasFullName (RepositoryData s) (TF.Attr s P.Text) where
    fullName =
        P.lens (_fullName :: RepositoryData s -> TF.Attr s P.Text)
               (\s a -> s { _fullName = a
                          , _name = TF.Nil
                          } :: RepositoryData s)

instance P.HasName (RepositoryData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: RepositoryData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a
                          , _fullName = TF.Nil
                          } :: RepositoryData s)

instance s ~ s' => P.HasComputedAllowMergeCommit (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedAllowMergeCommit x = TF.compute (TF.refKey x) "allow_merge_commit"

instance s ~ s' => P.HasComputedAllowRebaseMerge (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedAllowRebaseMerge x = TF.compute (TF.refKey x) "allow_rebase_merge"

instance s ~ s' => P.HasComputedAllowSquashMerge (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedAllowSquashMerge x = TF.compute (TF.refKey x) "allow_squash_merge"

instance s ~ s' => P.HasComputedArchived (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedArchived x = TF.compute (TF.refKey x) "archived"

instance s ~ s' => P.HasComputedDefaultBranch (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedDefaultBranch x = TF.compute (TF.refKey x) "default_branch"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedGitCloneUrl (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedGitCloneUrl x = TF.compute (TF.refKey x) "git_clone_url"

instance s ~ s' => P.HasComputedHasDownloads (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedHasDownloads x = TF.compute (TF.refKey x) "has_downloads"

instance s ~ s' => P.HasComputedHasIssues (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedHasIssues x = TF.compute (TF.refKey x) "has_issues"

instance s ~ s' => P.HasComputedHasProjects (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedHasProjects x = TF.compute (TF.refKey x) "has_projects"

instance s ~ s' => P.HasComputedHasWiki (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedHasWiki x = TF.compute (TF.refKey x) "has_wiki"

instance s ~ s' => P.HasComputedHomepageUrl (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedHomepageUrl x = TF.compute (TF.refKey x) "homepage_url"

instance s ~ s' => P.HasComputedHtmlUrl (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedHtmlUrl x = TF.compute (TF.refKey x) "html_url"

instance s ~ s' => P.HasComputedHttpCloneUrl (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedHttpCloneUrl x = TF.compute (TF.refKey x) "http_clone_url"

instance s ~ s' => P.HasComputedPrivate (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Bool) where
    computedPrivate x = TF.compute (TF.refKey x) "private"

instance s ~ s' => P.HasComputedSshCloneUrl (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedSshCloneUrl x = TF.compute (TF.refKey x) "ssh_clone_url"

instance s ~ s' => P.HasComputedSvnUrl (TF.Ref s' (RepositoryData s)) (TF.Attr s P.Text) where
    computedSvnUrl x = TF.compute (TF.refKey x) "svn_url"

instance s ~ s' => P.HasComputedTopics (TF.Ref s' (RepositoryData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedTopics x = TF.compute (TF.refKey x) "topics"

-- | @github_team@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/GitHub/github_team terraform documentation>
-- for more information.
data TeamData s = TeamData'
    { _slug :: TF.Attr s P.Text
    -- ^ @slug@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (TeamData s) where
    toObject TeamData'{..} = catMaybes
        [ TF.assign "slug" <$> TF.attribute _slug
        ]

teamData
    :: TF.Attr s P.Text -- ^ @slug@ - 'P.slug'
    -> TF.DataSource P.Provider (TeamData s)
teamData _slug =
    TF.newDataSource "github_team" $
        TeamData'
            { _slug = _slug
            }

instance P.HasSlug (TeamData s) (TF.Attr s P.Text) where
    slug =
        P.lens (_slug :: TeamData s -> TF.Attr s P.Text)
               (\s a -> s { _slug = a
                          } :: TeamData s)

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (TeamData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "description"

instance s ~ s' => P.HasComputedMembers (TF.Ref s' (TeamData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedMembers x = TF.compute (TF.refKey x) "members"

instance s ~ s' => P.HasComputedName (TF.Ref s' (TeamData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedPermission (TF.Ref s' (TeamData s)) (TF.Attr s P.Text) where
    computedPermission x = TF.compute (TF.refKey x) "permission"

instance s ~ s' => P.HasComputedPrivacy (TF.Ref s' (TeamData s)) (TF.Attr s P.Text) where
    computedPrivacy x = TF.compute (TF.refKey x) "privacy"

-- | @github_user@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/GitHub/github_user terraform documentation>
-- for more information.
data UserData s = UserData'
    { _username :: TF.Attr s P.Text
    -- ^ @username@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (UserData s) where
    toObject UserData'{..} = catMaybes
        [ TF.assign "username" <$> TF.attribute _username
        ]

userData
    :: TF.Attr s P.Text -- ^ @username@ - 'P.username'
    -> TF.DataSource P.Provider (UserData s)
userData _username =
    TF.newDataSource "github_user" $
        UserData'
            { _username = _username
            }

instance P.HasUsername (UserData s) (TF.Attr s P.Text) where
    username =
        P.lens (_username :: UserData s -> TF.Attr s P.Text)
               (\s a -> s { _username = a
                          } :: UserData s)

instance s ~ s' => P.HasComputedAvatarUrl (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedAvatarUrl x = TF.compute (TF.refKey x) "avatar_url"

instance s ~ s' => P.HasComputedBio (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedBio x = TF.compute (TF.refKey x) "bio"

instance s ~ s' => P.HasComputedBlog (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedBlog x = TF.compute (TF.refKey x) "blog"

instance s ~ s' => P.HasComputedCompany (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedCompany x = TF.compute (TF.refKey x) "company"

instance s ~ s' => P.HasComputedCreatedAt (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedCreatedAt x = TF.compute (TF.refKey x) "created_at"

instance s ~ s' => P.HasComputedEmail (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedEmail x = TF.compute (TF.refKey x) "email"

instance s ~ s' => P.HasComputedFollowers (TF.Ref s' (UserData s)) (TF.Attr s P.Integer) where
    computedFollowers x = TF.compute (TF.refKey x) "followers"

instance s ~ s' => P.HasComputedFollowing (TF.Ref s' (UserData s)) (TF.Attr s P.Integer) where
    computedFollowing x = TF.compute (TF.refKey x) "following"

instance s ~ s' => P.HasComputedGpgKeys (TF.Ref s' (UserData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedGpgKeys x = TF.compute (TF.refKey x) "gpg_keys"

instance s ~ s' => P.HasComputedGravatarId (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedGravatarId x = TF.compute (TF.refKey x) "gravatar_id"

instance s ~ s' => P.HasComputedLocation (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedLocation x = TF.compute (TF.refKey x) "location"

instance s ~ s' => P.HasComputedLogin (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedLogin x = TF.compute (TF.refKey x) "login"

instance s ~ s' => P.HasComputedName (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "name"

instance s ~ s' => P.HasComputedPublicGists (TF.Ref s' (UserData s)) (TF.Attr s P.Integer) where
    computedPublicGists x = TF.compute (TF.refKey x) "public_gists"

instance s ~ s' => P.HasComputedPublicRepos (TF.Ref s' (UserData s)) (TF.Attr s P.Integer) where
    computedPublicRepos x = TF.compute (TF.refKey x) "public_repos"

instance s ~ s' => P.HasComputedSiteAdmin (TF.Ref s' (UserData s)) (TF.Attr s P.Bool) where
    computedSiteAdmin x = TF.compute (TF.refKey x) "site_admin"

instance s ~ s' => P.HasComputedSshKeys (TF.Ref s' (UserData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSshKeys x = TF.compute (TF.refKey x) "ssh_keys"

instance s ~ s' => P.HasComputedUpdatedAt (TF.Ref s' (UserData s)) (TF.Attr s P.Text) where
    computedUpdatedAt x = TF.compute (TF.refKey x) "updated_at"
