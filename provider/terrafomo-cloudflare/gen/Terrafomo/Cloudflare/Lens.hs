-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude    #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : Terrafomo.Cloudflare.Lens
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Cloudflare.Lens
    (
    -- * Overloaded Fields
    -- ** Arguments
      HasAction (..)
    , HasActions (..)
    , HasAddress (..)
    , HasAlgorithm (..)
    , HasAltitude (..)
    , HasAlwaysOnline (..)
    , HasAlwaysUseHttps (..)
    , HasApiClientLogging (..)
    , HasAutomaticHttpsRewrites (..)
    , HasBody (..)
    , HasBrowserCacheTtl (..)
    , HasBrowserCheck (..)
    , HasBy (..)
    , HasBypassCacheOnCookie (..)
    , HasBypassUrlPatterns (..)
    , HasCacheByDeviceType (..)
    , HasCacheDeceptionArmor (..)
    , HasCacheLevel (..)
    , HasCacheOnCookie (..)
    , HasCertificate (..)
    , HasContent (..)
    , HasContentType (..)
    , HasCorrelate (..)
    , HasCss (..)
    , HasData' (..)
    , HasDefaultPoolIds (..)
    , HasDescription (..)
    , HasDigest (..)
    , HasDigestType (..)
    , HasDisableApps (..)
    , HasDisablePerformance (..)
    , HasDisableRailgun (..)
    , HasDisableSecurity (..)
    , HasDisabled (..)
    , HasDomain (..)
    , HasEdgeCacheTtl (..)
    , HasEmail (..)
    , HasEmailObfuscation (..)
    , HasEnabled (..)
    , HasExpectedBody (..)
    , HasExpectedCodes (..)
    , HasExplicitCacheControl (..)
    , HasFallbackPoolId (..)
    , HasFingerprint (..)
    , HasFlags (..)
    , HasForwardingUrl (..)
    , HasHeader (..)
    , HasHostHeaderOverride (..)
    , HasHtml (..)
    , HasInterval (..)
    , HasIpGeolocation (..)
    , HasJs (..)
    , HasKeyTag (..)
    , HasLatDegrees (..)
    , HasLatDirection (..)
    , HasLatMinutes (..)
    , HasLatSeconds (..)
    , HasLongDegrees (..)
    , HasLongDirection (..)
    , HasLongMinutes (..)
    , HasLongSeconds (..)
    , HasMatchingType (..)
    , HasMaxBackoff (..)
    , HasMethod (..)
    , HasMinBackoff (..)
    , HasMinimumOrigins (..)
    , HasMirage (..)
    , HasMobileSubdomain (..)
    , HasMode (..)
    , HasMonitor (..)
    , HasName (..)
    , HasNotificationEmail (..)
    , HasOpportunisticEncryption (..)
    , HasOrder (..)
    , HasOrgId (..)
    , HasOriginErrorPagePassThru (..)
    , HasOrigins (..)
    , HasPath (..)
    , HasPeriod (..)
    , HasPolish (..)
    , HasPoolIds (..)
    , HasPop (..)
    , HasPort (..)
    , HasPrecisionHorz (..)
    , HasPrecisionVert (..)
    , HasPreference (..)
    , HasPriority (..)
    , HasProto (..)
    , HasProtocol (..)
    , HasProxied (..)
    , HasPublicKey (..)
    , HasRegex (..)
    , HasRegion (..)
    , HasReplacement (..)
    , HasResolveOverride (..)
    , HasRespectStrongEtag (..)
    , HasResponse (..)
    , HasResponseBuffering (..)
    , HasRetries (..)
    , HasRocketLoader (..)
    , HasRps (..)
    , HasRuleId (..)
    , HasSecurityLevel (..)
    , HasSelector (..)
    , HasServerSideExclude (..)
    , HasService (..)
    , HasSize (..)
    , HasSortQueryStringForCache (..)
    , HasSsl (..)
    , HasStatus (..)
    , HasStatusCode (..)
    , HasStripUri (..)
    , HasTarget (..)
    , HasThreshold (..)
    , HasTimeout (..)
    , HasToken (..)
    , HasTrueClientIpHeader (..)
    , HasType' (..)
    , HasUrl (..)
    , HasUsage (..)
    , HasUseOrgFromZone (..)
    , HasValues (..)
    , HasWaf (..)
    , HasWeight (..)
    , HasZone (..)

    -- ** Computed Attributes
    , HasComputedAdvancedDdos (..)
    , HasComputedAlwaysOnline (..)
    , HasComputedAlwaysUseHttps (..)
    , HasComputedAutomaticHttpsRewrites (..)
    , HasComputedBrotli (..)
    , HasComputedBrowserCacheTtl (..)
    , HasComputedBrowserCheck (..)
    , HasComputedCacheLevel (..)
    , HasComputedChallengeTtl (..)
    , HasComputedCheckRegions (..)
    , HasComputedCidrBlocks (..)
    , HasComputedCnameFlattening (..)
    , HasComputedCreatedOn (..)
    , HasComputedDevelopmentMode (..)
    , HasComputedEdgeCacheTtl (..)
    , HasComputedEmailObfuscation (..)
    , HasComputedEnabled (..)
    , HasComputedHostname (..)
    , HasComputedHotlinkProtection (..)
    , HasComputedHttp2 (..)
    , HasComputedId (..)
    , HasComputedIncludeSubdomains (..)
    , HasComputedInitialSettings (..)
    , HasComputedInitialSettingsReadAt (..)
    , HasComputedIpGeolocation (..)
    , HasComputedIpv4CidrBlocks (..)
    , HasComputedIpv6 (..)
    , HasComputedIpv6CidrBlocks (..)
    , HasComputedMatch (..)
    , HasComputedMaxAge (..)
    , HasComputedMaxUpload (..)
    , HasComputedMetadata (..)
    , HasComputedMethods (..)
    , HasComputedMinTlsVersion (..)
    , HasComputedMinify (..)
    , HasComputedMirage (..)
    , HasComputedMobileRedirect (..)
    , HasComputedModifiedOn (..)
    , HasComputedNosniff (..)
    , HasComputedOpportunisticEncryption (..)
    , HasComputedOriginErrorPagePassThru (..)
    , HasComputedOriginTraffic (..)
    , HasComputedPackageId (..)
    , HasComputedPolish (..)
    , HasComputedPopPools (..)
    , HasComputedPrefetchPreload (..)
    , HasComputedPreload (..)
    , HasComputedPrivacyPass (..)
    , HasComputedProxiable (..)
    , HasComputedPseudoIpv4 (..)
    , HasComputedReadonlySettings (..)
    , HasComputedRegionPools (..)
    , HasComputedRequest (..)
    , HasComputedResponse (..)
    , HasComputedResponseBuffering (..)
    , HasComputedRocketLoader (..)
    , HasComputedSchemes (..)
    , HasComputedSecurityHeader (..)
    , HasComputedSecurityLevel (..)
    , HasComputedServerSideExclude (..)
    , HasComputedSettings (..)
    , HasComputedSha1Support (..)
    , HasComputedSortQueryStringForCache (..)
    , HasComputedSsl (..)
    , HasComputedStatuses (..)
    , HasComputedTls12Only (..)
    , HasComputedTls13 (..)
    , HasComputedTlsClientAuth (..)
    , HasComputedTrueClientIpHeader (..)
    , HasComputedTtl (..)
    , HasComputedUrlPattern (..)
    , HasComputedValue (..)
    , HasComputedWaf (..)
    , HasComputedWebp (..)
    , HasComputedWebsockets (..)
    , HasComputedZoneId (..)
    , HasComputedZoneStatus (..)
    , HasComputedZoneType (..)
    ) where

import GHC.Base ((.))

import qualified Lens.Micro       as P
import qualified Terrafomo.Schema as TF

class HasAction a b | a -> b where
    action :: P.Lens' a b

instance HasAction a b => HasAction (TF.Schema l p a) b where
    action = TF.configuration . action

class HasActions a b | a -> b where
    actions :: P.Lens' a b

instance HasActions a b => HasActions (TF.Schema l p a) b where
    actions = TF.configuration . actions

class HasAddress a b | a -> b where
    address :: P.Lens' a b

instance HasAddress a b => HasAddress (TF.Schema l p a) b where
    address = TF.configuration . address

class HasAlgorithm a b | a -> b where
    algorithm :: P.Lens' a b

instance HasAlgorithm a b => HasAlgorithm (TF.Schema l p a) b where
    algorithm = TF.configuration . algorithm

class HasAltitude a b | a -> b where
    altitude :: P.Lens' a b

instance HasAltitude a b => HasAltitude (TF.Schema l p a) b where
    altitude = TF.configuration . altitude

class HasAlwaysOnline a b | a -> b where
    alwaysOnline :: P.Lens' a b

instance HasAlwaysOnline a b => HasAlwaysOnline (TF.Schema l p a) b where
    alwaysOnline = TF.configuration . alwaysOnline

class HasAlwaysUseHttps a b | a -> b where
    alwaysUseHttps :: P.Lens' a b

instance HasAlwaysUseHttps a b => HasAlwaysUseHttps (TF.Schema l p a) b where
    alwaysUseHttps = TF.configuration . alwaysUseHttps

class HasApiClientLogging a b | a -> b where
    apiClientLogging :: P.Lens' a b

instance HasApiClientLogging a b => HasApiClientLogging (TF.Schema l p a) b where
    apiClientLogging = TF.configuration . apiClientLogging

class HasAutomaticHttpsRewrites a b | a -> b where
    automaticHttpsRewrites :: P.Lens' a b

instance HasAutomaticHttpsRewrites a b => HasAutomaticHttpsRewrites (TF.Schema l p a) b where
    automaticHttpsRewrites = TF.configuration . automaticHttpsRewrites

class HasBody a b | a -> b where
    body :: P.Lens' a b

instance HasBody a b => HasBody (TF.Schema l p a) b where
    body = TF.configuration . body

class HasBrowserCacheTtl a b | a -> b where
    browserCacheTtl :: P.Lens' a b

instance HasBrowserCacheTtl a b => HasBrowserCacheTtl (TF.Schema l p a) b where
    browserCacheTtl = TF.configuration . browserCacheTtl

class HasBrowserCheck a b | a -> b where
    browserCheck :: P.Lens' a b

instance HasBrowserCheck a b => HasBrowserCheck (TF.Schema l p a) b where
    browserCheck = TF.configuration . browserCheck

class HasBy a b | a -> b where
    by :: P.Lens' a b

instance HasBy a b => HasBy (TF.Schema l p a) b where
    by = TF.configuration . by

class HasBypassCacheOnCookie a b | a -> b where
    bypassCacheOnCookie :: P.Lens' a b

instance HasBypassCacheOnCookie a b => HasBypassCacheOnCookie (TF.Schema l p a) b where
    bypassCacheOnCookie = TF.configuration . bypassCacheOnCookie

class HasBypassUrlPatterns a b | a -> b where
    bypassUrlPatterns :: P.Lens' a b

instance HasBypassUrlPatterns a b => HasBypassUrlPatterns (TF.Schema l p a) b where
    bypassUrlPatterns = TF.configuration . bypassUrlPatterns

class HasCacheByDeviceType a b | a -> b where
    cacheByDeviceType :: P.Lens' a b

instance HasCacheByDeviceType a b => HasCacheByDeviceType (TF.Schema l p a) b where
    cacheByDeviceType = TF.configuration . cacheByDeviceType

class HasCacheDeceptionArmor a b | a -> b where
    cacheDeceptionArmor :: P.Lens' a b

instance HasCacheDeceptionArmor a b => HasCacheDeceptionArmor (TF.Schema l p a) b where
    cacheDeceptionArmor = TF.configuration . cacheDeceptionArmor

class HasCacheLevel a b | a -> b where
    cacheLevel :: P.Lens' a b

instance HasCacheLevel a b => HasCacheLevel (TF.Schema l p a) b where
    cacheLevel = TF.configuration . cacheLevel

class HasCacheOnCookie a b | a -> b where
    cacheOnCookie :: P.Lens' a b

instance HasCacheOnCookie a b => HasCacheOnCookie (TF.Schema l p a) b where
    cacheOnCookie = TF.configuration . cacheOnCookie

class HasCertificate a b | a -> b where
    certificate :: P.Lens' a b

instance HasCertificate a b => HasCertificate (TF.Schema l p a) b where
    certificate = TF.configuration . certificate

class HasContent a b | a -> b where
    content :: P.Lens' a b

instance HasContent a b => HasContent (TF.Schema l p a) b where
    content = TF.configuration . content

class HasContentType a b | a -> b where
    contentType :: P.Lens' a b

instance HasContentType a b => HasContentType (TF.Schema l p a) b where
    contentType = TF.configuration . contentType

class HasCorrelate a b | a -> b where
    correlate :: P.Lens' a b

instance HasCorrelate a b => HasCorrelate (TF.Schema l p a) b where
    correlate = TF.configuration . correlate

class HasCss a b | a -> b where
    css :: P.Lens' a b

instance HasCss a b => HasCss (TF.Schema l p a) b where
    css = TF.configuration . css

class HasData' a b | a -> b where
    data' :: P.Lens' a b

instance HasData' a b => HasData' (TF.Schema l p a) b where
    data' = TF.configuration . data'

class HasDefaultPoolIds a b | a -> b where
    defaultPoolIds :: P.Lens' a b

instance HasDefaultPoolIds a b => HasDefaultPoolIds (TF.Schema l p a) b where
    defaultPoolIds = TF.configuration . defaultPoolIds

class HasDescription a b | a -> b where
    description :: P.Lens' a b

instance HasDescription a b => HasDescription (TF.Schema l p a) b where
    description = TF.configuration . description

class HasDigest a b | a -> b where
    digest :: P.Lens' a b

instance HasDigest a b => HasDigest (TF.Schema l p a) b where
    digest = TF.configuration . digest

class HasDigestType a b | a -> b where
    digestType :: P.Lens' a b

instance HasDigestType a b => HasDigestType (TF.Schema l p a) b where
    digestType = TF.configuration . digestType

class HasDisableApps a b | a -> b where
    disableApps :: P.Lens' a b

instance HasDisableApps a b => HasDisableApps (TF.Schema l p a) b where
    disableApps = TF.configuration . disableApps

class HasDisablePerformance a b | a -> b where
    disablePerformance :: P.Lens' a b

instance HasDisablePerformance a b => HasDisablePerformance (TF.Schema l p a) b where
    disablePerformance = TF.configuration . disablePerformance

class HasDisableRailgun a b | a -> b where
    disableRailgun :: P.Lens' a b

instance HasDisableRailgun a b => HasDisableRailgun (TF.Schema l p a) b where
    disableRailgun = TF.configuration . disableRailgun

class HasDisableSecurity a b | a -> b where
    disableSecurity :: P.Lens' a b

instance HasDisableSecurity a b => HasDisableSecurity (TF.Schema l p a) b where
    disableSecurity = TF.configuration . disableSecurity

class HasDisabled a b | a -> b where
    disabled :: P.Lens' a b

instance HasDisabled a b => HasDisabled (TF.Schema l p a) b where
    disabled = TF.configuration . disabled

class HasDomain a b | a -> b where
    domain :: P.Lens' a b

instance HasDomain a b => HasDomain (TF.Schema l p a) b where
    domain = TF.configuration . domain

class HasEdgeCacheTtl a b | a -> b where
    edgeCacheTtl :: P.Lens' a b

instance HasEdgeCacheTtl a b => HasEdgeCacheTtl (TF.Schema l p a) b where
    edgeCacheTtl = TF.configuration . edgeCacheTtl

class HasEmail a b | a -> b where
    email :: P.Lens' a b

instance HasEmail a b => HasEmail (TF.Schema l p a) b where
    email = TF.configuration . email

class HasEmailObfuscation a b | a -> b where
    emailObfuscation :: P.Lens' a b

instance HasEmailObfuscation a b => HasEmailObfuscation (TF.Schema l p a) b where
    emailObfuscation = TF.configuration . emailObfuscation

class HasEnabled a b | a -> b where
    enabled :: P.Lens' a b

instance HasEnabled a b => HasEnabled (TF.Schema l p a) b where
    enabled = TF.configuration . enabled

class HasExpectedBody a b | a -> b where
    expectedBody :: P.Lens' a b

instance HasExpectedBody a b => HasExpectedBody (TF.Schema l p a) b where
    expectedBody = TF.configuration . expectedBody

class HasExpectedCodes a b | a -> b where
    expectedCodes :: P.Lens' a b

instance HasExpectedCodes a b => HasExpectedCodes (TF.Schema l p a) b where
    expectedCodes = TF.configuration . expectedCodes

class HasExplicitCacheControl a b | a -> b where
    explicitCacheControl :: P.Lens' a b

instance HasExplicitCacheControl a b => HasExplicitCacheControl (TF.Schema l p a) b where
    explicitCacheControl = TF.configuration . explicitCacheControl

class HasFallbackPoolId a b | a -> b where
    fallbackPoolId :: P.Lens' a b

instance HasFallbackPoolId a b => HasFallbackPoolId (TF.Schema l p a) b where
    fallbackPoolId = TF.configuration . fallbackPoolId

class HasFingerprint a b | a -> b where
    fingerprint :: P.Lens' a b

instance HasFingerprint a b => HasFingerprint (TF.Schema l p a) b where
    fingerprint = TF.configuration . fingerprint

class HasFlags a b | a -> b where
    flags :: P.Lens' a b

instance HasFlags a b => HasFlags (TF.Schema l p a) b where
    flags = TF.configuration . flags

class HasForwardingUrl a b | a -> b where
    forwardingUrl :: P.Lens' a b

instance HasForwardingUrl a b => HasForwardingUrl (TF.Schema l p a) b where
    forwardingUrl = TF.configuration . forwardingUrl

class HasHeader a b | a -> b where
    header :: P.Lens' a b

instance HasHeader a b => HasHeader (TF.Schema l p a) b where
    header = TF.configuration . header

class HasHostHeaderOverride a b | a -> b where
    hostHeaderOverride :: P.Lens' a b

instance HasHostHeaderOverride a b => HasHostHeaderOverride (TF.Schema l p a) b where
    hostHeaderOverride = TF.configuration . hostHeaderOverride

class HasHtml a b | a -> b where
    html :: P.Lens' a b

instance HasHtml a b => HasHtml (TF.Schema l p a) b where
    html = TF.configuration . html

class HasInterval a b | a -> b where
    interval :: P.Lens' a b

instance HasInterval a b => HasInterval (TF.Schema l p a) b where
    interval = TF.configuration . interval

class HasIpGeolocation a b | a -> b where
    ipGeolocation :: P.Lens' a b

instance HasIpGeolocation a b => HasIpGeolocation (TF.Schema l p a) b where
    ipGeolocation = TF.configuration . ipGeolocation

class HasJs a b | a -> b where
    js :: P.Lens' a b

instance HasJs a b => HasJs (TF.Schema l p a) b where
    js = TF.configuration . js

class HasKeyTag a b | a -> b where
    keyTag :: P.Lens' a b

instance HasKeyTag a b => HasKeyTag (TF.Schema l p a) b where
    keyTag = TF.configuration . keyTag

class HasLatDegrees a b | a -> b where
    latDegrees :: P.Lens' a b

instance HasLatDegrees a b => HasLatDegrees (TF.Schema l p a) b where
    latDegrees = TF.configuration . latDegrees

class HasLatDirection a b | a -> b where
    latDirection :: P.Lens' a b

instance HasLatDirection a b => HasLatDirection (TF.Schema l p a) b where
    latDirection = TF.configuration . latDirection

class HasLatMinutes a b | a -> b where
    latMinutes :: P.Lens' a b

instance HasLatMinutes a b => HasLatMinutes (TF.Schema l p a) b where
    latMinutes = TF.configuration . latMinutes

class HasLatSeconds a b | a -> b where
    latSeconds :: P.Lens' a b

instance HasLatSeconds a b => HasLatSeconds (TF.Schema l p a) b where
    latSeconds = TF.configuration . latSeconds

class HasLongDegrees a b | a -> b where
    longDegrees :: P.Lens' a b

instance HasLongDegrees a b => HasLongDegrees (TF.Schema l p a) b where
    longDegrees = TF.configuration . longDegrees

class HasLongDirection a b | a -> b where
    longDirection :: P.Lens' a b

instance HasLongDirection a b => HasLongDirection (TF.Schema l p a) b where
    longDirection = TF.configuration . longDirection

class HasLongMinutes a b | a -> b where
    longMinutes :: P.Lens' a b

instance HasLongMinutes a b => HasLongMinutes (TF.Schema l p a) b where
    longMinutes = TF.configuration . longMinutes

class HasLongSeconds a b | a -> b where
    longSeconds :: P.Lens' a b

instance HasLongSeconds a b => HasLongSeconds (TF.Schema l p a) b where
    longSeconds = TF.configuration . longSeconds

class HasMatchingType a b | a -> b where
    matchingType :: P.Lens' a b

instance HasMatchingType a b => HasMatchingType (TF.Schema l p a) b where
    matchingType = TF.configuration . matchingType

class HasMaxBackoff a b | a -> b where
    maxBackoff :: P.Lens' a b

instance HasMaxBackoff a b => HasMaxBackoff (TF.Schema l p a) b where
    maxBackoff = TF.configuration . maxBackoff

class HasMethod a b | a -> b where
    method :: P.Lens' a b

instance HasMethod a b => HasMethod (TF.Schema l p a) b where
    method = TF.configuration . method

class HasMinBackoff a b | a -> b where
    minBackoff :: P.Lens' a b

instance HasMinBackoff a b => HasMinBackoff (TF.Schema l p a) b where
    minBackoff = TF.configuration . minBackoff

class HasMinimumOrigins a b | a -> b where
    minimumOrigins :: P.Lens' a b

instance HasMinimumOrigins a b => HasMinimumOrigins (TF.Schema l p a) b where
    minimumOrigins = TF.configuration . minimumOrigins

class HasMirage a b | a -> b where
    mirage :: P.Lens' a b

instance HasMirage a b => HasMirage (TF.Schema l p a) b where
    mirage = TF.configuration . mirage

class HasMobileSubdomain a b | a -> b where
    mobileSubdomain :: P.Lens' a b

instance HasMobileSubdomain a b => HasMobileSubdomain (TF.Schema l p a) b where
    mobileSubdomain = TF.configuration . mobileSubdomain

class HasMode a b | a -> b where
    mode :: P.Lens' a b

instance HasMode a b => HasMode (TF.Schema l p a) b where
    mode = TF.configuration . mode

class HasMonitor a b | a -> b where
    monitor :: P.Lens' a b

instance HasMonitor a b => HasMonitor (TF.Schema l p a) b where
    monitor = TF.configuration . monitor

class HasName a b | a -> b where
    name :: P.Lens' a b

instance HasName a b => HasName (TF.Schema l p a) b where
    name = TF.configuration . name

class HasNotificationEmail a b | a -> b where
    notificationEmail :: P.Lens' a b

instance HasNotificationEmail a b => HasNotificationEmail (TF.Schema l p a) b where
    notificationEmail = TF.configuration . notificationEmail

class HasOpportunisticEncryption a b | a -> b where
    opportunisticEncryption :: P.Lens' a b

instance HasOpportunisticEncryption a b => HasOpportunisticEncryption (TF.Schema l p a) b where
    opportunisticEncryption = TF.configuration . opportunisticEncryption

class HasOrder a b | a -> b where
    order :: P.Lens' a b

instance HasOrder a b => HasOrder (TF.Schema l p a) b where
    order = TF.configuration . order

class HasOrgId a b | a -> b where
    orgId :: P.Lens' a b

instance HasOrgId a b => HasOrgId (TF.Schema l p a) b where
    orgId = TF.configuration . orgId

class HasOriginErrorPagePassThru a b | a -> b where
    originErrorPagePassThru :: P.Lens' a b

instance HasOriginErrorPagePassThru a b => HasOriginErrorPagePassThru (TF.Schema l p a) b where
    originErrorPagePassThru = TF.configuration . originErrorPagePassThru

class HasOrigins a b | a -> b where
    origins :: P.Lens' a b

instance HasOrigins a b => HasOrigins (TF.Schema l p a) b where
    origins = TF.configuration . origins

class HasPath a b | a -> b where
    path :: P.Lens' a b

instance HasPath a b => HasPath (TF.Schema l p a) b where
    path = TF.configuration . path

class HasPeriod a b | a -> b where
    period :: P.Lens' a b

instance HasPeriod a b => HasPeriod (TF.Schema l p a) b where
    period = TF.configuration . period

class HasPolish a b | a -> b where
    polish :: P.Lens' a b

instance HasPolish a b => HasPolish (TF.Schema l p a) b where
    polish = TF.configuration . polish

class HasPoolIds a b | a -> b where
    poolIds :: P.Lens' a b

instance HasPoolIds a b => HasPoolIds (TF.Schema l p a) b where
    poolIds = TF.configuration . poolIds

class HasPop a b | a -> b where
    pop :: P.Lens' a b

instance HasPop a b => HasPop (TF.Schema l p a) b where
    pop = TF.configuration . pop

class HasPort a b | a -> b where
    port :: P.Lens' a b

instance HasPort a b => HasPort (TF.Schema l p a) b where
    port = TF.configuration . port

class HasPrecisionHorz a b | a -> b where
    precisionHorz :: P.Lens' a b

instance HasPrecisionHorz a b => HasPrecisionHorz (TF.Schema l p a) b where
    precisionHorz = TF.configuration . precisionHorz

class HasPrecisionVert a b | a -> b where
    precisionVert :: P.Lens' a b

instance HasPrecisionVert a b => HasPrecisionVert (TF.Schema l p a) b where
    precisionVert = TF.configuration . precisionVert

class HasPreference a b | a -> b where
    preference :: P.Lens' a b

instance HasPreference a b => HasPreference (TF.Schema l p a) b where
    preference = TF.configuration . preference

class HasPriority a b | a -> b where
    priority :: P.Lens' a b

instance HasPriority a b => HasPriority (TF.Schema l p a) b where
    priority = TF.configuration . priority

class HasProto a b | a -> b where
    proto :: P.Lens' a b

instance HasProto a b => HasProto (TF.Schema l p a) b where
    proto = TF.configuration . proto

class HasProtocol a b | a -> b where
    protocol :: P.Lens' a b

instance HasProtocol a b => HasProtocol (TF.Schema l p a) b where
    protocol = TF.configuration . protocol

class HasProxied a b | a -> b where
    proxied :: P.Lens' a b

instance HasProxied a b => HasProxied (TF.Schema l p a) b where
    proxied = TF.configuration . proxied

class HasPublicKey a b | a -> b where
    publicKey :: P.Lens' a b

instance HasPublicKey a b => HasPublicKey (TF.Schema l p a) b where
    publicKey = TF.configuration . publicKey

class HasRegex a b | a -> b where
    regex :: P.Lens' a b

instance HasRegex a b => HasRegex (TF.Schema l p a) b where
    regex = TF.configuration . regex

class HasRegion a b | a -> b where
    region :: P.Lens' a b

instance HasRegion a b => HasRegion (TF.Schema l p a) b where
    region = TF.configuration . region

class HasReplacement a b | a -> b where
    replacement :: P.Lens' a b

instance HasReplacement a b => HasReplacement (TF.Schema l p a) b where
    replacement = TF.configuration . replacement

class HasResolveOverride a b | a -> b where
    resolveOverride :: P.Lens' a b

instance HasResolveOverride a b => HasResolveOverride (TF.Schema l p a) b where
    resolveOverride = TF.configuration . resolveOverride

class HasRespectStrongEtag a b | a -> b where
    respectStrongEtag :: P.Lens' a b

instance HasRespectStrongEtag a b => HasRespectStrongEtag (TF.Schema l p a) b where
    respectStrongEtag = TF.configuration . respectStrongEtag

class HasResponse a b | a -> b where
    response :: P.Lens' a b

instance HasResponse a b => HasResponse (TF.Schema l p a) b where
    response = TF.configuration . response

class HasResponseBuffering a b | a -> b where
    responseBuffering :: P.Lens' a b

instance HasResponseBuffering a b => HasResponseBuffering (TF.Schema l p a) b where
    responseBuffering = TF.configuration . responseBuffering

class HasRetries a b | a -> b where
    retries :: P.Lens' a b

instance HasRetries a b => HasRetries (TF.Schema l p a) b where
    retries = TF.configuration . retries

class HasRocketLoader a b | a -> b where
    rocketLoader :: P.Lens' a b

instance HasRocketLoader a b => HasRocketLoader (TF.Schema l p a) b where
    rocketLoader = TF.configuration . rocketLoader

class HasRps a b | a -> b where
    rps :: P.Lens' a b

instance HasRps a b => HasRps (TF.Schema l p a) b where
    rps = TF.configuration . rps

class HasRuleId a b | a -> b where
    ruleId :: P.Lens' a b

instance HasRuleId a b => HasRuleId (TF.Schema l p a) b where
    ruleId = TF.configuration . ruleId

class HasSecurityLevel a b | a -> b where
    securityLevel :: P.Lens' a b

instance HasSecurityLevel a b => HasSecurityLevel (TF.Schema l p a) b where
    securityLevel = TF.configuration . securityLevel

class HasSelector a b | a -> b where
    selector :: P.Lens' a b

instance HasSelector a b => HasSelector (TF.Schema l p a) b where
    selector = TF.configuration . selector

class HasServerSideExclude a b | a -> b where
    serverSideExclude :: P.Lens' a b

instance HasServerSideExclude a b => HasServerSideExclude (TF.Schema l p a) b where
    serverSideExclude = TF.configuration . serverSideExclude

class HasService a b | a -> b where
    service :: P.Lens' a b

instance HasService a b => HasService (TF.Schema l p a) b where
    service = TF.configuration . service

class HasSize a b | a -> b where
    size :: P.Lens' a b

instance HasSize a b => HasSize (TF.Schema l p a) b where
    size = TF.configuration . size

class HasSortQueryStringForCache a b | a -> b where
    sortQueryStringForCache :: P.Lens' a b

instance HasSortQueryStringForCache a b => HasSortQueryStringForCache (TF.Schema l p a) b where
    sortQueryStringForCache = TF.configuration . sortQueryStringForCache

class HasSsl a b | a -> b where
    ssl :: P.Lens' a b

instance HasSsl a b => HasSsl (TF.Schema l p a) b where
    ssl = TF.configuration . ssl

class HasStatus a b | a -> b where
    status :: P.Lens' a b

instance HasStatus a b => HasStatus (TF.Schema l p a) b where
    status = TF.configuration . status

class HasStatusCode a b | a -> b where
    statusCode :: P.Lens' a b

instance HasStatusCode a b => HasStatusCode (TF.Schema l p a) b where
    statusCode = TF.configuration . statusCode

class HasStripUri a b | a -> b where
    stripUri :: P.Lens' a b

instance HasStripUri a b => HasStripUri (TF.Schema l p a) b where
    stripUri = TF.configuration . stripUri

class HasTarget a b | a -> b where
    target :: P.Lens' a b

instance HasTarget a b => HasTarget (TF.Schema l p a) b where
    target = TF.configuration . target

class HasThreshold a b | a -> b where
    threshold :: P.Lens' a b

instance HasThreshold a b => HasThreshold (TF.Schema l p a) b where
    threshold = TF.configuration . threshold

class HasTimeout a b | a -> b where
    timeout :: P.Lens' a b

instance HasTimeout a b => HasTimeout (TF.Schema l p a) b where
    timeout = TF.configuration . timeout

class HasToken a b | a -> b where
    token :: P.Lens' a b

instance HasToken a b => HasToken (TF.Schema l p a) b where
    token = TF.configuration . token

class HasTrueClientIpHeader a b | a -> b where
    trueClientIpHeader :: P.Lens' a b

instance HasTrueClientIpHeader a b => HasTrueClientIpHeader (TF.Schema l p a) b where
    trueClientIpHeader = TF.configuration . trueClientIpHeader

class HasType' a b | a -> b where
    type' :: P.Lens' a b

instance HasType' a b => HasType' (TF.Schema l p a) b where
    type' = TF.configuration . type'

class HasUrl a b | a -> b where
    url :: P.Lens' a b

instance HasUrl a b => HasUrl (TF.Schema l p a) b where
    url = TF.configuration . url

class HasUsage a b | a -> b where
    usage :: P.Lens' a b

instance HasUsage a b => HasUsage (TF.Schema l p a) b where
    usage = TF.configuration . usage

class HasUseOrgFromZone a b | a -> b where
    useOrgFromZone :: P.Lens' a b

instance HasUseOrgFromZone a b => HasUseOrgFromZone (TF.Schema l p a) b where
    useOrgFromZone = TF.configuration . useOrgFromZone

class HasValues a b | a -> b where
    values :: P.Lens' a b

instance HasValues a b => HasValues (TF.Schema l p a) b where
    values = TF.configuration . values

class HasWaf a b | a -> b where
    waf :: P.Lens' a b

instance HasWaf a b => HasWaf (TF.Schema l p a) b where
    waf = TF.configuration . waf

class HasWeight a b | a -> b where
    weight :: P.Lens' a b

instance HasWeight a b => HasWeight (TF.Schema l p a) b where
    weight = TF.configuration . weight

class HasZone a b | a -> b where
    zone :: P.Lens' a b

instance HasZone a b => HasZone (TF.Schema l p a) b where
    zone = TF.configuration . zone

class HasComputedAdvancedDdos a b | a -> b where
    computedAdvancedDdos :: a -> b

class HasComputedAlwaysOnline a b | a -> b where
    computedAlwaysOnline :: a -> b

class HasComputedAlwaysUseHttps a b | a -> b where
    computedAlwaysUseHttps :: a -> b

class HasComputedAutomaticHttpsRewrites a b | a -> b where
    computedAutomaticHttpsRewrites :: a -> b

class HasComputedBrotli a b | a -> b where
    computedBrotli :: a -> b

class HasComputedBrowserCacheTtl a b | a -> b where
    computedBrowserCacheTtl :: a -> b

class HasComputedBrowserCheck a b | a -> b where
    computedBrowserCheck :: a -> b

class HasComputedCacheLevel a b | a -> b where
    computedCacheLevel :: a -> b

class HasComputedChallengeTtl a b | a -> b where
    computedChallengeTtl :: a -> b

class HasComputedCheckRegions a b | a -> b where
    computedCheckRegions :: a -> b

class HasComputedCidrBlocks a b | a -> b where
    computedCidrBlocks :: a -> b

class HasComputedCnameFlattening a b | a -> b where
    computedCnameFlattening :: a -> b

class HasComputedCreatedOn a b | a -> b where
    computedCreatedOn :: a -> b

class HasComputedDevelopmentMode a b | a -> b where
    computedDevelopmentMode :: a -> b

class HasComputedEdgeCacheTtl a b | a -> b where
    computedEdgeCacheTtl :: a -> b

class HasComputedEmailObfuscation a b | a -> b where
    computedEmailObfuscation :: a -> b

class HasComputedEnabled a b | a -> b where
    computedEnabled :: a -> b

class HasComputedHostname a b | a -> b where
    computedHostname :: a -> b

class HasComputedHotlinkProtection a b | a -> b where
    computedHotlinkProtection :: a -> b

class HasComputedHttp2 a b | a -> b where
    computedHttp2 :: a -> b

class HasComputedId a b | a -> b where
    computedId :: a -> b

class HasComputedIncludeSubdomains a b | a -> b where
    computedIncludeSubdomains :: a -> b

class HasComputedInitialSettings a b | a -> b where
    computedInitialSettings :: a -> b

class HasComputedInitialSettingsReadAt a b | a -> b where
    computedInitialSettingsReadAt :: a -> b

class HasComputedIpGeolocation a b | a -> b where
    computedIpGeolocation :: a -> b

class HasComputedIpv4CidrBlocks a b | a -> b where
    computedIpv4CidrBlocks :: a -> b

class HasComputedIpv6 a b | a -> b where
    computedIpv6 :: a -> b

class HasComputedIpv6CidrBlocks a b | a -> b where
    computedIpv6CidrBlocks :: a -> b

class HasComputedMatch a b | a -> b where
    computedMatch :: a -> b

class HasComputedMaxAge a b | a -> b where
    computedMaxAge :: a -> b

class HasComputedMaxUpload a b | a -> b where
    computedMaxUpload :: a -> b

class HasComputedMetadata a b | a -> b where
    computedMetadata :: a -> b

class HasComputedMethods a b | a -> b where
    computedMethods :: a -> b

class HasComputedMinTlsVersion a b | a -> b where
    computedMinTlsVersion :: a -> b

class HasComputedMinify a b | a -> b where
    computedMinify :: a -> b

class HasComputedMirage a b | a -> b where
    computedMirage :: a -> b

class HasComputedMobileRedirect a b | a -> b where
    computedMobileRedirect :: a -> b

class HasComputedModifiedOn a b | a -> b where
    computedModifiedOn :: a -> b

class HasComputedNosniff a b | a -> b where
    computedNosniff :: a -> b

class HasComputedOpportunisticEncryption a b | a -> b where
    computedOpportunisticEncryption :: a -> b

class HasComputedOriginErrorPagePassThru a b | a -> b where
    computedOriginErrorPagePassThru :: a -> b

class HasComputedOriginTraffic a b | a -> b where
    computedOriginTraffic :: a -> b

class HasComputedPackageId a b | a -> b where
    computedPackageId :: a -> b

class HasComputedPolish a b | a -> b where
    computedPolish :: a -> b

class HasComputedPopPools a b | a -> b where
    computedPopPools :: a -> b

class HasComputedPrefetchPreload a b | a -> b where
    computedPrefetchPreload :: a -> b

class HasComputedPreload a b | a -> b where
    computedPreload :: a -> b

class HasComputedPrivacyPass a b | a -> b where
    computedPrivacyPass :: a -> b

class HasComputedProxiable a b | a -> b where
    computedProxiable :: a -> b

class HasComputedPseudoIpv4 a b | a -> b where
    computedPseudoIpv4 :: a -> b

class HasComputedReadonlySettings a b | a -> b where
    computedReadonlySettings :: a -> b

class HasComputedRegionPools a b | a -> b where
    computedRegionPools :: a -> b

class HasComputedRequest a b | a -> b where
    computedRequest :: a -> b

class HasComputedResponse a b | a -> b where
    computedResponse :: a -> b

class HasComputedResponseBuffering a b | a -> b where
    computedResponseBuffering :: a -> b

class HasComputedRocketLoader a b | a -> b where
    computedRocketLoader :: a -> b

class HasComputedSchemes a b | a -> b where
    computedSchemes :: a -> b

class HasComputedSecurityHeader a b | a -> b where
    computedSecurityHeader :: a -> b

class HasComputedSecurityLevel a b | a -> b where
    computedSecurityLevel :: a -> b

class HasComputedServerSideExclude a b | a -> b where
    computedServerSideExclude :: a -> b

class HasComputedSettings a b | a -> b where
    computedSettings :: a -> b

class HasComputedSha1Support a b | a -> b where
    computedSha1Support :: a -> b

class HasComputedSortQueryStringForCache a b | a -> b where
    computedSortQueryStringForCache :: a -> b

class HasComputedSsl a b | a -> b where
    computedSsl :: a -> b

class HasComputedStatuses a b | a -> b where
    computedStatuses :: a -> b

class HasComputedTls12Only a b | a -> b where
    computedTls12Only :: a -> b

class HasComputedTls13 a b | a -> b where
    computedTls13 :: a -> b

class HasComputedTlsClientAuth a b | a -> b where
    computedTlsClientAuth :: a -> b

class HasComputedTrueClientIpHeader a b | a -> b where
    computedTrueClientIpHeader :: a -> b

class HasComputedTtl a b | a -> b where
    computedTtl :: a -> b

class HasComputedUrlPattern a b | a -> b where
    computedUrlPattern :: a -> b

class HasComputedValue a b | a -> b where
    computedValue :: a -> b

class HasComputedWaf a b | a -> b where
    computedWaf :: a -> b

class HasComputedWebp a b | a -> b where
    computedWebp :: a -> b

class HasComputedWebsockets a b | a -> b where
    computedWebsockets :: a -> b

class HasComputedZoneId a b | a -> b where
    computedZoneId :: a -> b

class HasComputedZoneStatus a b | a -> b where
    computedZoneStatus :: a -> b

class HasComputedZoneType a b | a -> b where
    computedZoneType :: a -> b
