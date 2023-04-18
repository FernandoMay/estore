import 'dart:convert';

Resp respFromJson(String str) => Resp.fromJson(json.decode(str));

String respToJson(Resp data) => json.encode(data.toJson());

class Resp {
  Resp({
    required this.responseStatus,
    required this.responseMessage,
    required this.sortStrategy,
    required this.domainCode,
    required this.keyword,
    required this.item,
  });

  String responseStatus;
  String responseMessage;
  String sortStrategy;
  String domainCode;
  String keyword;
  RespItem item;

  factory Resp.fromJson(Map<String, dynamic> json) => Resp(
        responseStatus: json["responseStatus"],
        responseMessage: json["responseMessage"],
        sortStrategy: json["sortStrategy"],
        domainCode: json["domainCode"],
        keyword: json["keyword"],
        item: RespItem.fromJson(json["item"]),
      );

  Map<String, dynamic> toJson() => {
        "responseStatus": responseStatus,
        "responseMessage": responseMessage,
        "sortStrategy": sortStrategy,
        "domainCode": domainCode,
        "keyword": keyword,
        "item": item.toJson(),
      };
}

class RespItem {
  RespItem({
    required this.assetPrefix,
    required this.dynamicIds,
    required this.query,
    required this.appGip,
    required this.buildId,
    required this.locale,
    required this.props,
    required this.gip,
    required this.defaultLocale,
    required this.locales,
    required this.page,
    required this.isFallback,
    required this.customServer,
    required this.runtimeConfig,
    required this.scriptLoader,
  });

  String assetPrefix;
  List<String> dynamicIds;
  Query query;
  bool appGip;
  String buildId;
  String locale;
  Props props;
  bool gip;
  String defaultLocale;
  List<String> locales;
  String page;
  bool isFallback;
  bool customServer;
  RuntimeConfig runtimeConfig;
  List<dynamic> scriptLoader;

  factory RespItem.fromJson(Map<String, dynamic> json) => RespItem(
        assetPrefix: json["assetPrefix"],
        dynamicIds: List<String>.from(json["dynamicIds"].map((x) => x)),
        query: Query.fromJson(json["query"]),
        appGip: json["appGip"],
        buildId: json["buildId"],
        locale: json["locale"],
        props: Props.fromJson(json["props"]),
        gip: json["gip"],
        defaultLocale: json["defaultLocale"],
        locales: List<String>.from(json["locales"].map((x) => x)),
        page: json["page"],
        isFallback: json["isFallback"],
        customServer: json["customServer"],
        runtimeConfig: RuntimeConfig.fromJson(json["runtimeConfig"]),
        scriptLoader: List<dynamic>.from(json["scriptLoader"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "assetPrefix": assetPrefix,
        "dynamicIds": List<dynamic>.from(dynamicIds.map((x) => x)),
        "query": query.toJson(),
        "appGip": appGip,
        "buildId": buildId,
        "locale": locale,
        "props": props.toJson(),
        "gip": gip,
        "defaultLocale": defaultLocale,
        "locales": List<dynamic>.from(locales.map((x) => x)),
        "page": page,
        "isFallback": isFallback,
        "customServer": customServer,
        "runtimeConfig": runtimeConfig.toJson(),
        "scriptLoader": List<dynamic>.from(scriptLoader.map((x) => x)),
      };
}

class Props {
  Props({
    required this.pageProps,
  });

  PageProps pageProps;

  factory Props.fromJson(Map<String, dynamic> json) => Props(
        pageProps: PageProps.fromJson(json["pageProps"]),
      );

  Map<String, dynamic> toJson() => {
        "pageProps": pageProps.toJson(),
      };
}

class PageProps {
  PageProps({
    required this.initialData,
    required this.initialSearchQueryVariables,
    required this.psych,
    required this.isomorphicSessionId,
    required this.trace,
    required this.isCaching,
    required this.queryContextCacheId,
    required this.bootstrapData,
    required this.enableGqlCsrRedirect,
    required this.nonce,
    required this.persistedQueriesConfig,
    required this.dehydratedSearchCv,
    required this.adSessionId,
    required this.excludeBeacon,
    required this.isNextPublicMocksEnabled,
  });

  InitialData initialData;
  InitialSearchQueryVariables initialSearchQueryVariables;
  Psych psych;
  String isomorphicSessionId;
  Trace trace;
  bool isCaching;
  int queryContextCacheId;
  BootstrapData bootstrapData;
  bool enableGqlCsrRedirect;
  String nonce;
  PersistedQueriesConfig persistedQueriesConfig;
  DehydratedSearchCv dehydratedSearchCv;
  String adSessionId;
  bool excludeBeacon;
  bool isNextPublicMocksEnabled;

  factory PageProps.fromJson(Map<String, dynamic> json) => PageProps(
        initialData: InitialData.fromJson(json["initialData"]),
        initialSearchQueryVariables: InitialSearchQueryVariables.fromJson(
            json["initialSearchQueryVariables"]),
        psych: Psych.fromJson(json["psych"]),
        isomorphicSessionId: json["isomorphicSessionId"],
        trace: Trace.fromJson(json["trace"]),
        isCaching: json["isCaching"],
        queryContextCacheId: json["queryContextCacheId"],
        bootstrapData: BootstrapData.fromJson(json["bootstrapData"]),
        enableGqlCsrRedirect: json["enableGqlCsrRedirect"],
        nonce: json["nonce"],
        persistedQueriesConfig:
            PersistedQueriesConfig.fromJson(json["persistedQueriesConfig"]),
        dehydratedSearchCv:
            DehydratedSearchCv.fromJson(json["dehydratedSearchCv"]),
        adSessionId: json["adSessionId"],
        excludeBeacon: json["excludeBeacon"],
        isNextPublicMocksEnabled: json["isNextPublicMocksEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "initialData": initialData.toJson(),
        "initialSearchQueryVariables": initialSearchQueryVariables.toJson(),
        "psych": psych.toJson(),
        "isomorphicSessionId": isomorphicSessionId,
        "trace": trace.toJson(),
        "isCaching": isCaching,
        "queryContextCacheId": queryContextCacheId,
        "bootstrapData": bootstrapData.toJson(),
        "enableGqlCsrRedirect": enableGqlCsrRedirect,
        "nonce": nonce,
        "persistedQueriesConfig": persistedQueriesConfig.toJson(),
        "dehydratedSearchCv": dehydratedSearchCv.toJson(),
        "adSessionId": adSessionId,
        "excludeBeacon": excludeBeacon,
        "isNextPublicMocksEnabled": isNextPublicMocksEnabled,
      };
}

class BootstrapData {
  BootstrapData({
    required this.account,
    required this.header,
    required this.footer,
    required this.cv,
    required this.membership,
  });

  BootstrapDataAccount account;
  BootstrapDataHeader header;
  BootstrapDataFooter footer;
  Cv cv;
  Membership membership;

  factory BootstrapData.fromJson(Map<String, dynamic> json) => BootstrapData(
        account: BootstrapDataAccount.fromJson(json["account"]),
        header: BootstrapDataHeader.fromJson(json["header"]),
        footer: BootstrapDataFooter.fromJson(json["footer"]),
        cv: Cv.fromJson(json["cv"]),
        membership: Membership.fromJson(json["membership"]),
      );

  Map<String, dynamic> toJson() => {
        "account": account.toJson(),
        "header": header.toJson(),
        "footer": footer.toJson(),
        "cv": cv.toJson(),
        "membership": membership.toJson(),
      };
}

class BootstrapDataAccount {
  BootstrapDataAccount({
    required this.data,
  });

  Headers data;

  factory BootstrapDataAccount.fromJson(Map<String, dynamic> json) =>
      BootstrapDataAccount(
        data: Headers.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Headers {
  Headers();

  factory Headers.fromJson(Map<String, dynamic> json) => Headers();

  Map<String, dynamic> toJson() => {};
}

class Cv {
  Cv({
    required this.account,
    required this.cart,
    required this.bookslot,
    required this.header,
    required this.pulse,
    required this.footer,
    required this.shared,
    required this.ads,
    required this.search,
  });

  CvAccount account;
  Cart cart;
  Bookslot bookslot;
  CvHeader header;
  Pulse pulse;
  CvFooter footer;
  Shared shared;
  CvAds ads;
  Search search;

  factory Cv.fromJson(Map<String, dynamic> json) => Cv(
        account: CvAccount.fromJson(json["account"]),
        cart: Cart.fromJson(json["cart"]),
        bookslot: Bookslot.fromJson(json["bookslot"]),
        header: CvHeader.fromJson(json["header"]),
        pulse: Pulse.fromJson(json["pulse"]),
        footer: CvFooter.fromJson(json["footer"]),
        shared: Shared.fromJson(json["shared"]),
        ads: CvAds.fromJson(json["ads"]),
        search: Search.fromJson(json["search"]),
      );

  Map<String, dynamic> toJson() => {
        "account": account.toJson(),
        "cart": cart.toJson(),
        "bookslot": bookslot.toJson(),
        "header": header.toJson(),
        "pulse": pulse.toJson(),
        "footer": footer.toJson(),
        "shared": shared.toJson(),
        "ads": ads.toJson(),
        "search": search.toJson(),
      };
}

class CvAccount {
  CvAccount({
    required this.all,
  });

  AccountAll all;

  factory CvAccount.fromJson(Map<String, dynamic> json) => CvAccount(
        all: AccountAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class AccountAll {
  AccountAll({
    required this.vuduLibraryUrl,
    required this.registriesUrl,
    required this.enableGoogleAutoComplete,
    required this.enableMyItemsMenu,
    required this.enablePostalCodeMessage,
    required this.enableLocationAutoComplete,
    required this.eBookUrl,
    required this.enableAccountWallet,
    required this.isInHomeEnabled,
    required this.enableAccountMWeb,
    required this.walmartPlusUrl,
    required this.enablePostalCodeOnly,
    required this.listsUrl,
    required this.placeholder,
    required this.enableWalmartPlus,
    required this.communicationAndPrivacyUrl,
    required this.enableWalmartPlusPreference,
    required this.walmartAssociateUrl,
    required this.pharmacyUrl,
    required this.enableFeatureCommsAndPrivacy,
    required this.protectionPlanUrl,
    required this.reorderUrl,
    required this.enableAvsOverride,
    required this.shouldUpdateCartAfterUpdateZipcode,
    required this.isFcShippingEnabled,
    required this.enableInHomeAddress,
    required this.enableAccountDWeb,
    required this.enablePetHubPage,
    required this.ccpaUrl,
    required this.enableSpendAnalyzer,
    required this.enableNextBestAction,
    required this.enableSubscriptionModule,
    required this.enableAvsOverrideGoogleAutoComplete,
    required this.enableInHomeEdit,
    required this.enableZipcodeInAddressSelector,
    required this.showSignInNudgeDweb,
    required this.showSignInNudgeMWeb,
    required this.enableYourProfileSection,
    required this.customCakeUrl,
    required this.enableDigitalRewards,
    required this.itemSubscriptionUrl,
    required this.digitalRewardsUrl,
    required this.disableGuestUserAutocomplete,
    required this.enchancedAccountPharmacyUrl,
    required this.enableItemSubscriptionRamp,
    required this.enablePetsLink,
    required this.ccpaNewRequestUrl,
    required this.autoCareCenterUrl,
    required this.enablePhoneCollection,
    required this.enableItemSubscription,
    required this.enableAddressLineOneAutofill,
    required this.isRewardsEnabled,
    required this.enableCharityOfChoice,
  });

  String vuduLibraryUrl;
  String registriesUrl;
  bool enableGoogleAutoComplete;
  bool enableMyItemsMenu;
  bool enablePostalCodeMessage;
  bool enableLocationAutoComplete;
  String eBookUrl;
  bool enableAccountWallet;
  bool isInHomeEnabled;
  bool enableAccountMWeb;
  String walmartPlusUrl;
  bool enablePostalCodeOnly;
  String listsUrl;
  int placeholder;
  bool enableWalmartPlus;
  String communicationAndPrivacyUrl;
  bool enableWalmartPlusPreference;
  String walmartAssociateUrl;
  String pharmacyUrl;
  bool enableFeatureCommsAndPrivacy;
  String protectionPlanUrl;
  String reorderUrl;
  bool enableAvsOverride;
  bool shouldUpdateCartAfterUpdateZipcode;
  bool isFcShippingEnabled;
  bool enableInHomeAddress;
  bool enableAccountDWeb;
  bool enablePetHubPage;
  String ccpaUrl;
  bool enableSpendAnalyzer;
  bool enableNextBestAction;
  bool enableSubscriptionModule;
  bool enableAvsOverrideGoogleAutoComplete;
  bool enableInHomeEdit;
  bool enableZipcodeInAddressSelector;
  bool showSignInNudgeDweb;
  bool showSignInNudgeMWeb;
  bool enableYourProfileSection;
  String customCakeUrl;
  bool enableDigitalRewards;
  String itemSubscriptionUrl;
  String digitalRewardsUrl;
  bool disableGuestUserAutocomplete;
  String enchancedAccountPharmacyUrl;
  bool enableItemSubscriptionRamp;
  bool enablePetsLink;
  String ccpaNewRequestUrl;
  String autoCareCenterUrl;
  bool enablePhoneCollection;
  bool enableItemSubscription;
  bool enableAddressLineOneAutofill;
  bool isRewardsEnabled;
  bool enableCharityOfChoice;

  factory AccountAll.fromJson(Map<String, dynamic> json) => AccountAll(
        vuduLibraryUrl: json["vuduLibraryUrl"],
        registriesUrl: json["registriesUrl"],
        enableGoogleAutoComplete: json["enableGoogleAutoComplete"],
        enableMyItemsMenu: json["enableMyItemsMenu"],
        enablePostalCodeMessage: json["enablePostalCodeMessage"],
        enableLocationAutoComplete: json["enableLocationAutoComplete"],
        eBookUrl: json["eBookUrl"],
        enableAccountWallet: json["enableAccountWallet"],
        isInHomeEnabled: json["isInHomeEnabled"],
        enableAccountMWeb: json["enableAccountMWeb"],
        walmartPlusUrl: json["walmartPlusUrl"],
        enablePostalCodeOnly: json["enablePostalCodeOnly"],
        listsUrl: json["listsUrl"],
        placeholder: json["placeholder"],
        enableWalmartPlus: json["enableWalmartPlus"],
        communicationAndPrivacyUrl: json["communicationAndPrivacyUrl"],
        enableWalmartPlusPreference: json["enableWalmartPlusPreference"],
        walmartAssociateUrl: json["walmartAssociateUrl"],
        pharmacyUrl: json["pharmacyUrl"],
        enableFeatureCommsAndPrivacy: json["enableFeatureCommsAndPrivacy"],
        protectionPlanUrl: json["protectionPlanUrl"],
        reorderUrl: json["reorderUrl"],
        enableAvsOverride: json["enableAvsOverride"],
        shouldUpdateCartAfterUpdateZipcode:
            json["shouldUpdateCartAfterUpdateZipcode"],
        isFcShippingEnabled: json["isFCShippingEnabled"],
        enableInHomeAddress: json["enableInHomeAddress"],
        enableAccountDWeb: json["enableAccountDWeb"],
        enablePetHubPage: json["enablePetHubPage"],
        ccpaUrl: json["ccpaUrl"],
        enableSpendAnalyzer: json["enableSpendAnalyzer"],
        enableNextBestAction: json["enableNextBestAction"],
        enableSubscriptionModule: json["enableSubscriptionModule"],
        enableAvsOverrideGoogleAutoComplete:
            json["enableAVSOverrideGoogleAutoComplete"],
        enableInHomeEdit: json["enableInHomeEdit"],
        enableZipcodeInAddressSelector: json["enableZipcodeInAddressSelector"],
        showSignInNudgeDweb: json["showSignInNudgeDweb"],
        showSignInNudgeMWeb: json["showSignInNudgeMWeb"],
        enableYourProfileSection: json["enableYourProfileSection"],
        customCakeUrl: json["customCakeUrl"],
        enableDigitalRewards: json["enableDigitalRewards"],
        itemSubscriptionUrl: json["itemSubscriptionUrl"],
        digitalRewardsUrl: json["digitalRewardsUrl"],
        disableGuestUserAutocomplete: json["disableGuestUserAutocomplete"],
        enchancedAccountPharmacyUrl: json["enchancedAccountPharmacyUrl"],
        enableItemSubscriptionRamp: json["enableItemSubscriptionRamp"],
        enablePetsLink: json["enablePetsLink"],
        ccpaNewRequestUrl: json["ccpaNewRequestUrl"],
        autoCareCenterUrl: json["autoCareCenterUrl"],
        enablePhoneCollection: json["enablePhoneCollection"],
        enableItemSubscription: json["enableItemSubscription"],
        enableAddressLineOneAutofill: json["enableAddressLineOneAutofill"],
        isRewardsEnabled: json["isRewardsEnabled"],
        enableCharityOfChoice: json["enableCharityOfChoice"],
      );

  Map<String, dynamic> toJson() => {
        "vuduLibraryUrl": vuduLibraryUrl,
        "registriesUrl": registriesUrl,
        "enableGoogleAutoComplete": enableGoogleAutoComplete,
        "enableMyItemsMenu": enableMyItemsMenu,
        "enablePostalCodeMessage": enablePostalCodeMessage,
        "enableLocationAutoComplete": enableLocationAutoComplete,
        "eBookUrl": eBookUrl,
        "enableAccountWallet": enableAccountWallet,
        "isInHomeEnabled": isInHomeEnabled,
        "enableAccountMWeb": enableAccountMWeb,
        "walmartPlusUrl": walmartPlusUrl,
        "enablePostalCodeOnly": enablePostalCodeOnly,
        "listsUrl": listsUrl,
        "placeholder": placeholder,
        "enableWalmartPlus": enableWalmartPlus,
        "communicationAndPrivacyUrl": communicationAndPrivacyUrl,
        "enableWalmartPlusPreference": enableWalmartPlusPreference,
        "walmartAssociateUrl": walmartAssociateUrl,
        "pharmacyUrl": pharmacyUrl,
        "enableFeatureCommsAndPrivacy": enableFeatureCommsAndPrivacy,
        "protectionPlanUrl": protectionPlanUrl,
        "reorderUrl": reorderUrl,
        "enableAvsOverride": enableAvsOverride,
        "shouldUpdateCartAfterUpdateZipcode":
            shouldUpdateCartAfterUpdateZipcode,
        "isFCShippingEnabled": isFcShippingEnabled,
        "enableInHomeAddress": enableInHomeAddress,
        "enableAccountDWeb": enableAccountDWeb,
        "enablePetHubPage": enablePetHubPage,
        "ccpaUrl": ccpaUrl,
        "enableSpendAnalyzer": enableSpendAnalyzer,
        "enableNextBestAction": enableNextBestAction,
        "enableSubscriptionModule": enableSubscriptionModule,
        "enableAVSOverrideGoogleAutoComplete":
            enableAvsOverrideGoogleAutoComplete,
        "enableInHomeEdit": enableInHomeEdit,
        "enableZipcodeInAddressSelector": enableZipcodeInAddressSelector,
        "showSignInNudgeDweb": showSignInNudgeDweb,
        "showSignInNudgeMWeb": showSignInNudgeMWeb,
        "enableYourProfileSection": enableYourProfileSection,
        "customCakeUrl": customCakeUrl,
        "enableDigitalRewards": enableDigitalRewards,
        "itemSubscriptionUrl": itemSubscriptionUrl,
        "digitalRewardsUrl": digitalRewardsUrl,
        "disableGuestUserAutocomplete": disableGuestUserAutocomplete,
        "enchancedAccountPharmacyUrl": enchancedAccountPharmacyUrl,
        "enableItemSubscriptionRamp": enableItemSubscriptionRamp,
        "enablePetsLink": enablePetsLink,
        "ccpaNewRequestUrl": ccpaNewRequestUrl,
        "autoCareCenterUrl": autoCareCenterUrl,
        "enablePhoneCollection": enablePhoneCollection,
        "enableItemSubscription": enableItemSubscription,
        "enableAddressLineOneAutofill": enableAddressLineOneAutofill,
        "isRewardsEnabled": isRewardsEnabled,
        "enableCharityOfChoice": enableCharityOfChoice,
      };
}

class CvAds {
  CvAds({
    required this.all,
  });

  AdsAll all;

  factory CvAds.fromJson(Map<String, dynamic> json) => CvAds(
        all: AdsAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class AdsAll {
  AdsAll({
    required this.spMq2Measure3PEnable,
    required this.spMq2Measure1PEnable,
    required this.ipMq1RenderEnable,
    required this.ipSkReqEnable,
    required this.bpMq2Measure1PEnable,
    required this.measure3PImpEnable,
    required this.cacheBusterTimeDiffMs,
    required this.bpSkReqEnable,
    required this.bpMq2ReqEnable,
    required this.spMq1RenderEnable,
    required this.bpSkMeasure1PEnable,
    required this.bpSkMeasure3PEnable,
    required this.spMq2RenderEnable,
    required this.ipSpc2Measure1PEnable,
    required this.hpMq1Measure1PEnable,
    required this.hpMq1Measure3PEnable,
    required this.spSkRenderEnable,
    required this.bpSpc1ReqEnable,
    required this.bpMq1ReqEnable,
    required this.displayCheckIp,
    required this.bpMq1RenderEnable,
    required this.hpMq2RenderEnable,
    required this.moatIvt,
    required this.bpMq2RenderEnable,
    required this.hpMq1RenderEnable,
    required this.ipSpc2ReqEnable,
    required this.spSkMeasure1PEnable,
    required this.spSkMeasure3PEnable,
    required this.bpSpc1Measure1PEnable,
    required this.spMq1Measure1PEnable,
    required this.ipSkMeasure1PEnable,
    required this.spMq1Measure3PEnable,
    required this.bpMq1Measure1PEnable,
    required this.ipSpc1ReqEnable,
    required this.spMq2ReqEnable,
    required this.bpSkRenderEnable,
    required this.ipMq1Measure3PEnable,
    required this.ipMq1Measure1PEnable,
    required this.spSkReqEnable,
    required this.safeframeUrl,
    required this.hpMq1ReqEnable,
    required this.bpMq1Measure3PEnable,
    required this.ipSpc1Measure1PEnable,
    required this.bpBigMeasure1PEnable,
    required this.ipSkMeasure3PEnable,
    required this.ipMq1ReqEnable,
    required this.ipMq2Measure1PEnable,
    required this.ipMq2Measure3PEnable,
    required this.hpMq2Measure3PEnable,
    required this.hpMq2Measure1PEnable,
    required this.spMq1ReqEnable,
    required this.spSpc1ReqEnable,
    required this.bpMq2Measure3PEnable,
    required this.blockInternal,
    required this.ipSkRenderEnable,
    required this.hpMq2ReqEnable,
    required this.ipMq2ReqEnable,
    required this.spSpc1Measure1PEnable,
    required this.ipMq2RenderEnable,
    required this.adPreviousResponseNullCheck,
    required this.spSvplaysInline,
    required this.bpGalReqEnable,
    required this.cpMq1RenderEnable,
    required this.spSvLoopCompleteEventEnable,
    required this.spSkDspEnable,
    required this.ipMq1DspEnable,
    required this.enableHpRedesignXpa,
    required this.enableGetPvId,
    required this.ipBr1VideoDspEnabled,
    required this.videoEarlyloadOffset,
    required this.adPreviewMode,
    required this.adShowAtcFieldEnable,
    required this.hpTpFs1Measure1PEnable,
    required this.spSvInViewRemoveVideoData,
    required this.adsHpControlGroupXpa,
    required this.enableVideoTracker,
    required this.videoCcEnable,
    required this.hpMq2DspEnable,
    required this.sbaUiEnhanceEnable,
    required this.displayUnitWrapperUnmount,
    required this.spSvUiAlphaUpdate,
    required this.updateAdV2QueryUbsEnable,
    required this.ipBr1Measure3PEnable,
    required this.hpTpFs1Measure3PEnable,
    required this.cartP13NMeasure1PEnable,
    required this.bpSkDspEnable,
    required this.cpSkRenderEnable,
    required this.phSkRenderEnable,
    required this.ipBr1Measure1PEnable,
    required this.hpRedesignVisitedXpa,
    required this.adManualShelfIdCheck,
    required this.hpGalMeasure3PEnable,
    required this.hpGalMeasure1PEnable,
    required this.ipGalTopReqEnable,
    required this.spSvHideTabletVideo,
    required this.enableMyitemsBlending,
    required this.spSvContainerEnable,
    required this.shpSkRenderEnable,
    required this.displaySbaLogospQs,
    required this.adsControlGroupXpa,
    required this.adSpClipBeaconEnable,
    required this.spGalReqEnable,
    required this.spSigMeasure1PEnable,
    required this.hpTpFs2Measure3PEnable,
    required this.moatRefactorEnable,
    required this.hpTpFs2Measure1PEnable,
    required this.ipBr1EarlyLoadRootMargin,
    required this.typMq1ReqEnable,
    required this.bpMq1DspEnable,
    required this.sbaMwebRedesignV2Enable,
    required this.hpGalRenderEnable,
    required this.odpSkRenderEnable,
    required this.hpGalMiddleMeasure1PEnable,
    required this.adSpIncrementDecrementCheck,
    required this.hpGpbFs1Measure3PEnable,
    required this.spGalMeasure3PEnable,
    required this.odpSkMeasure1PEnable,
    required this.shpSkReqEnable,
    required this.hpGpbFs3ReqEnable,
    required this.odpSkReqEnable,
    required this.spIbottaEnable,
    required this.hpGpbFs3RenderEnable,
    required this.typMq1Measure1PEnable,
    required this.hpGpbFs2RenderEnable,
    required this.displaySpMyItems,
    required this.typSkMeasure3PEnable,
    required this.buyBoxVariations,
    required this.dspViewabilityTracking,
    required this.updateAdV2Query2StoreEnable,
    required this.hpTpFs2ReqEnable,
    required this.enableSearchGalleryMaxWidth,
    required this.ipBbReqEnable,
    required this.odpSkConfigModuleLocation,
    required this.displayPreviousRenderCheck,
    required this.enableGalleryItemChanges,
    required this.sbaMwebRedesignV1Enable,
    required this.spVideoAdsMobileStyling,
    required this.hpGpbFs2Measure1PEnable,
    required this.displayDeduplication,
    required this.enableMyitemsSortPlacementBeacon,
    required this.hpGpbFs1RenderEnable,
    required this.display3PVisibilityCheck,
    required this.shpSkMeasure3PEnable,
    required this.ipGalTopMeasure1PEnable,
    required this.hpGpbFs3Measure3PEnable,
    required this.cpMq2RenderEnable,
    required this.enableSponsoredRedirectParam,
    required this.phSkMeasure1PEnable,
    required this.ipGalMiddleMeasure1PEnable,
    required this.disableLowPriorityBeacons,
    required this.adResponseBeaconEnable,
    required this.phSkReqEnable,
    required this.spGalRenderEnable,
    required this.displayProductPos,
    required this.enableGalleryMultipleLocations,
    required this.ipGalTopRenderEnable,
    required this.hpGalReqEnable,
    required this.enableGalleryV2Design,
    required this.hpTpFs3Measure3PEnable,
    required this.hpTpFs3Measure1PEnable,
    required this.useLegacyBtfCmp,
    required this.hpTpFs2RenderEnable,
    required this.hpTpFs1RenderEnable,
    required this.displayOrderDeduplication,
    required this.enableStackedRecallTracking,
    required this.odpSkConfigLazy,
    required this.hpTpFs3RenderEnable,
    required this.ipBr1VideoMeasure3PEnable,
    required this.enableMyitemsAtcSortPlacementBeacon,
    required this.dspProcessingEnable,
    required this.enableGalleryReRender,
    required this.ipBr1DspEnable,
    required this.spMq1DspEnable,
    required this.enableDisclaimerIconVar1,
    required this.displayPoVAdBlockerEnable,
    required this.enableProductBrandOnBeacon,
    required this.spSvMeasure1PEnable,
    required this.myitemsMeasure1PEnable,
    required this.ipGalMiddleReqEnable,
    required this.spSvVideoTrackingEnable,
    required this.hpGalMiddleReqEnable,
    required this.adsXpa,
    required this.displayAddlInfo,
    required this.spSbaReqEnable,
    required this.typMq1RenderEnable,
    required this.bpMq2DspEnable,
    required this.viewableBeaconFix,
    required this.spSvViewableBeaconEnable,
    required this.adsQuickshopBeaconEnable,
    required this.hpGpbFs2ReqEnable,
    required this.ipBbMeasure1PEnable,
    required this.bpGalMeasure1PEnable,
    required this.hpGalMiddleRenderEnable,
    required this.useSearchBrowseBtfCmp,
    required this.bpGalMeasure3PEnable,
    required this.phSkConfigLazy,
    required this.hpGpbFs1ReqEnable,
    required this.bpGalRenderEnable,
    required this.hpTpFs3ReqEnable,
    required this.ipBr1RenderEnable,
    required this.pacP13NMeasure1PEnable,
    required this.enableSeasonalColorOption,
    required this.spSvLazyLoadingEnable,
    required this.ipGalMiddleRenderEnable,
    required this.displayProductsPos,
    required this.spSvMwebLoadingFixEnable,
    required this.enableBrandBoxEarlyLoad,
    required this.hpGpbFs1Measure1PEnable,
    required this.odpSkMeasure3PEnable,
    required this.spGalMeasure1PEnable,
    required this.hpMq1DspEnable,
    required this.typMq1Measure3PEnable,
    required this.enableGalleryTitle,
    required this.typSkRenderEnable,
    required this.hpOldPageVisitedXpa,
    required this.hpP13NMeasure1PEnable,
    required this.typSkMeasure1PEnable,
    required this.spSvGridPositionBeacon,
    required this.adViewableGmBeaconCheck,
    required this.phSkConfigModuleLocation,
    required this.lazyRenderCmp,
    required this.ipBbLazyLoadingEnable,
    required this.displayIdentifyAdServer,
    required this.ipMq2DspEnable,
    required this.phSkMeasure3PEnable,
    required this.spSbaMeasure1PEnable,
    required this.typSkReqEnable,
    required this.hpGpbFs3Measure1PEnable,
    required this.displayPpmMode,
    required this.spSvRenderEnable,
    required this.ipSkDspEnable,
    required this.addSpVideoNaBeacon,
    required this.ipBr1MinScreenHeight,
    required this.ipGalTopMeasure3PEnable,
    required this.ipP13NMeasure1PEnable,
    required this.enableAdSmilePricing,
    required this.spSvReqEnable,
    required this.hpTpFs1ReqEnable,
    required this.enableLegalDisclaimerSponsored,
    required this.adCategoryTakeoverCheck,
    required this.hpGpbFs2Measure3PEnable,
    required this.shpSkMeasure1PEnable,
    required this.hpGalMiddleMeasure3PEnable,
    required this.enableVideoUiErrorState,
    required this.spMq2DspEnable,
    required this.enableSvTestAds,
    required this.hpPovLockoutPriorityEnable,
    required this.ipBr1ReqEnable,
    required this.ipGalMiddleMeasure3PEnable,
  });

  bool spMq2Measure3PEnable;
  bool spMq2Measure1PEnable;
  bool ipMq1RenderEnable;
  bool ipSkReqEnable;
  bool bpMq2Measure1PEnable;
  bool measure3PImpEnable;
  int cacheBusterTimeDiffMs;
  bool bpSkReqEnable;
  bool bpMq2ReqEnable;
  bool spMq1RenderEnable;
  bool bpSkMeasure1PEnable;
  bool bpSkMeasure3PEnable;
  bool spMq2RenderEnable;
  bool ipSpc2Measure1PEnable;
  bool hpMq1Measure1PEnable;
  bool hpMq1Measure3PEnable;
  bool spSkRenderEnable;
  bool bpSpc1ReqEnable;
  bool bpMq1ReqEnable;
  bool displayCheckIp;
  bool bpMq1RenderEnable;
  bool hpMq2RenderEnable;
  String moatIvt;
  bool bpMq2RenderEnable;
  bool hpMq1RenderEnable;
  bool ipSpc2ReqEnable;
  bool spSkMeasure1PEnable;
  bool spSkMeasure3PEnable;
  bool bpSpc1Measure1PEnable;
  bool spMq1Measure1PEnable;
  bool ipSkMeasure1PEnable;
  bool spMq1Measure3PEnable;
  bool bpMq1Measure1PEnable;
  bool ipSpc1ReqEnable;
  bool spMq2ReqEnable;
  bool bpSkRenderEnable;
  bool ipMq1Measure3PEnable;
  bool ipMq1Measure1PEnable;
  bool spSkReqEnable;
  String safeframeUrl;
  bool hpMq1ReqEnable;
  bool bpMq1Measure3PEnable;
  bool ipSpc1Measure1PEnable;
  bool bpBigMeasure1PEnable;
  bool ipSkMeasure3PEnable;
  bool ipMq1ReqEnable;
  bool ipMq2Measure1PEnable;
  bool ipMq2Measure3PEnable;
  bool hpMq2Measure3PEnable;
  bool hpMq2Measure1PEnable;
  bool spMq1ReqEnable;
  bool spSpc1ReqEnable;
  bool bpMq2Measure3PEnable;
  bool blockInternal;
  bool ipSkRenderEnable;
  bool hpMq2ReqEnable;
  bool ipMq2ReqEnable;
  bool spSpc1Measure1PEnable;
  bool ipMq2RenderEnable;
  bool adPreviousResponseNullCheck;
  bool spSvplaysInline;
  bool bpGalReqEnable;
  bool cpMq1RenderEnable;
  bool spSvLoopCompleteEventEnable;
  bool spSkDspEnable;
  bool ipMq1DspEnable;
  bool enableHpRedesignXpa;
  bool enableGetPvId;
  bool ipBr1VideoDspEnabled;
  int videoEarlyloadOffset;
  bool adPreviewMode;
  bool adShowAtcFieldEnable;
  bool hpTpFs1Measure1PEnable;
  bool spSvInViewRemoveVideoData;
  String adsHpControlGroupXpa;
  bool enableVideoTracker;
  bool videoCcEnable;
  bool hpMq2DspEnable;
  bool sbaUiEnhanceEnable;
  bool displayUnitWrapperUnmount;
  bool spSvUiAlphaUpdate;
  bool updateAdV2QueryUbsEnable;
  bool ipBr1Measure3PEnable;
  bool hpTpFs1Measure3PEnable;
  bool cartP13NMeasure1PEnable;
  bool bpSkDspEnable;
  bool cpSkRenderEnable;
  bool phSkRenderEnable;
  bool ipBr1Measure1PEnable;
  String hpRedesignVisitedXpa;
  bool adManualShelfIdCheck;
  bool hpGalMeasure3PEnable;
  bool hpGalMeasure1PEnable;
  bool ipGalTopReqEnable;
  bool spSvHideTabletVideo;
  bool enableMyitemsBlending;
  bool spSvContainerEnable;
  bool shpSkRenderEnable;
  bool displaySbaLogospQs;
  String adsControlGroupXpa;
  bool adSpClipBeaconEnable;
  bool spGalReqEnable;
  bool spSigMeasure1PEnable;
  bool hpTpFs2Measure3PEnable;
  bool moatRefactorEnable;
  bool hpTpFs2Measure1PEnable;
  int ipBr1EarlyLoadRootMargin;
  bool typMq1ReqEnable;
  bool bpMq1DspEnable;
  bool sbaMwebRedesignV2Enable;
  bool hpGalRenderEnable;
  bool odpSkRenderEnable;
  bool hpGalMiddleMeasure1PEnable;
  bool adSpIncrementDecrementCheck;
  bool hpGpbFs1Measure3PEnable;
  bool spGalMeasure3PEnable;
  bool odpSkMeasure1PEnable;
  bool shpSkReqEnable;
  bool hpGpbFs3ReqEnable;
  bool odpSkReqEnable;
  bool spIbottaEnable;
  bool hpGpbFs3RenderEnable;
  bool typMq1Measure1PEnable;
  bool hpGpbFs2RenderEnable;
  bool displaySpMyItems;
  bool typSkMeasure3PEnable;
  String buyBoxVariations;
  bool dspViewabilityTracking;
  bool updateAdV2Query2StoreEnable;
  bool hpTpFs2ReqEnable;
  bool enableSearchGalleryMaxWidth;
  bool ipBbReqEnable;
  String odpSkConfigModuleLocation;
  bool displayPreviousRenderCheck;
  bool enableGalleryItemChanges;
  bool sbaMwebRedesignV1Enable;
  bool spVideoAdsMobileStyling;
  bool hpGpbFs2Measure1PEnable;
  bool displayDeduplication;
  bool enableMyitemsSortPlacementBeacon;
  bool hpGpbFs1RenderEnable;
  bool display3PVisibilityCheck;
  bool shpSkMeasure3PEnable;
  bool ipGalTopMeasure1PEnable;
  bool hpGpbFs3Measure3PEnable;
  bool cpMq2RenderEnable;
  bool enableSponsoredRedirectParam;
  bool phSkMeasure1PEnable;
  bool ipGalMiddleMeasure1PEnable;
  bool disableLowPriorityBeacons;
  bool adResponseBeaconEnable;
  bool phSkReqEnable;
  bool spGalRenderEnable;
  bool displayProductPos;
  bool enableGalleryMultipleLocations;
  bool ipGalTopRenderEnable;
  bool hpGalReqEnable;
  bool enableGalleryV2Design;
  bool hpTpFs3Measure3PEnable;
  bool hpTpFs3Measure1PEnable;
  bool useLegacyBtfCmp;
  bool hpTpFs2RenderEnable;
  bool hpTpFs1RenderEnable;
  bool displayOrderDeduplication;
  bool enableStackedRecallTracking;
  int odpSkConfigLazy;
  bool hpTpFs3RenderEnable;
  bool ipBr1VideoMeasure3PEnable;
  bool enableMyitemsAtcSortPlacementBeacon;
  bool dspProcessingEnable;
  bool enableGalleryReRender;
  bool ipBr1DspEnable;
  bool spMq1DspEnable;
  bool enableDisclaimerIconVar1;
  bool displayPoVAdBlockerEnable;
  bool enableProductBrandOnBeacon;
  bool spSvMeasure1PEnable;
  bool myitemsMeasure1PEnable;
  bool ipGalMiddleReqEnable;
  bool spSvVideoTrackingEnable;
  bool hpGalMiddleReqEnable;
  String adsXpa;
  bool displayAddlInfo;
  bool spSbaReqEnable;
  bool typMq1RenderEnable;
  bool bpMq2DspEnable;
  bool viewableBeaconFix;
  bool spSvViewableBeaconEnable;
  bool adsQuickshopBeaconEnable;
  bool hpGpbFs2ReqEnable;
  bool ipBbMeasure1PEnable;
  bool bpGalMeasure1PEnable;
  bool hpGalMiddleRenderEnable;
  bool useSearchBrowseBtfCmp;
  bool bpGalMeasure3PEnable;
  int phSkConfigLazy;
  bool hpGpbFs1ReqEnable;
  bool bpGalRenderEnable;
  bool hpTpFs3ReqEnable;
  bool ipBr1RenderEnable;
  bool pacP13NMeasure1PEnable;
  bool enableSeasonalColorOption;
  bool spSvLazyLoadingEnable;
  bool ipGalMiddleRenderEnable;
  bool displayProductsPos;
  bool spSvMwebLoadingFixEnable;
  bool enableBrandBoxEarlyLoad;
  bool hpGpbFs1Measure1PEnable;
  bool odpSkMeasure3PEnable;
  bool spGalMeasure1PEnable;
  bool hpMq1DspEnable;
  bool typMq1Measure3PEnable;
  bool enableGalleryTitle;
  bool typSkRenderEnable;
  String hpOldPageVisitedXpa;
  bool hpP13NMeasure1PEnable;
  bool typSkMeasure1PEnable;
  bool spSvGridPositionBeacon;
  bool adViewableGmBeaconCheck;
  String phSkConfigModuleLocation;
  bool lazyRenderCmp;
  bool ipBbLazyLoadingEnable;
  bool displayIdentifyAdServer;
  bool ipMq2DspEnable;
  bool phSkMeasure3PEnable;
  bool spSbaMeasure1PEnable;
  bool typSkReqEnable;
  bool hpGpbFs3Measure1PEnable;
  bool displayPpmMode;
  bool spSvRenderEnable;
  bool ipSkDspEnable;
  bool addSpVideoNaBeacon;
  int ipBr1MinScreenHeight;
  bool ipGalTopMeasure3PEnable;
  bool ipP13NMeasure1PEnable;
  bool enableAdSmilePricing;
  bool spSvReqEnable;
  bool hpTpFs1ReqEnable;
  bool enableLegalDisclaimerSponsored;
  bool adCategoryTakeoverCheck;
  bool hpGpbFs2Measure3PEnable;
  bool shpSkMeasure1PEnable;
  bool hpGalMiddleMeasure3PEnable;
  bool enableVideoUiErrorState;
  bool spMq2DspEnable;
  bool enableSvTestAds;
  bool hpPovLockoutPriorityEnable;
  bool ipBr1ReqEnable;
  bool ipGalMiddleMeasure3PEnable;

  factory AdsAll.fromJson(Map<String, dynamic> json) => AdsAll(
        spMq2Measure3PEnable: json["spMq2Measure3PEnable"],
        spMq2Measure1PEnable: json["spMq2Measure1PEnable"],
        ipMq1RenderEnable: json["ipMq1RenderEnable"],
        ipSkReqEnable: json["ipSkReqEnable"],
        bpMq2Measure1PEnable: json["bpMq2Measure1PEnable"],
        measure3PImpEnable: json["measure3PImpEnable"],
        cacheBusterTimeDiffMs: json["cacheBusterTimeDiffMs"],
        bpSkReqEnable: json["bpSkReqEnable"],
        bpMq2ReqEnable: json["bpMq2ReqEnable"],
        spMq1RenderEnable: json["spMq1RenderEnable"],
        bpSkMeasure1PEnable: json["bpSkMeasure1PEnable"],
        bpSkMeasure3PEnable: json["bpSkMeasure3PEnable"],
        spMq2RenderEnable: json["spMq2RenderEnable"],
        ipSpc2Measure1PEnable: json["ipSpc2Measure1PEnable"],
        hpMq1Measure1PEnable: json["hpMq1Measure1PEnable"],
        hpMq1Measure3PEnable: json["hpMq1Measure3PEnable"],
        spSkRenderEnable: json["spSkRenderEnable"],
        bpSpc1ReqEnable: json["bpSpc1ReqEnable"],
        bpMq1ReqEnable: json["bpMq1ReqEnable"],
        displayCheckIp: json["displayCheckIp"],
        bpMq1RenderEnable: json["bpMq1RenderEnable"],
        hpMq2RenderEnable: json["hpMq2RenderEnable"],
        moatIvt: json["moatIvt"],
        bpMq2RenderEnable: json["bpMq2RenderEnable"],
        hpMq1RenderEnable: json["hpMq1RenderEnable"],
        ipSpc2ReqEnable: json["ipSpc2ReqEnable"],
        spSkMeasure1PEnable: json["spSkMeasure1PEnable"],
        spSkMeasure3PEnable: json["spSkMeasure3PEnable"],
        bpSpc1Measure1PEnable: json["bpSpc1Measure1PEnable"],
        spMq1Measure1PEnable: json["spMq1Measure1PEnable"],
        ipSkMeasure1PEnable: json["ipSkMeasure1PEnable"],
        spMq1Measure3PEnable: json["spMq1Measure3PEnable"],
        bpMq1Measure1PEnable: json["bpMq1Measure1PEnable"],
        ipSpc1ReqEnable: json["ipSpc1ReqEnable"],
        spMq2ReqEnable: json["spMq2ReqEnable"],
        bpSkRenderEnable: json["bpSkRenderEnable"],
        ipMq1Measure3PEnable: json["ipMq1Measure3PEnable"],
        ipMq1Measure1PEnable: json["ipMq1Measure1PEnable"],
        spSkReqEnable: json["spSkReqEnable"],
        safeframeUrl: json["safeframeURL"],
        hpMq1ReqEnable: json["hpMq1ReqEnable"],
        bpMq1Measure3PEnable: json["bpMq1Measure3PEnable"],
        ipSpc1Measure1PEnable: json["ipSpc1Measure1PEnable"],
        bpBigMeasure1PEnable: json["bpBigMeasure1PEnable"],
        ipSkMeasure3PEnable: json["ipSkMeasure3PEnable"],
        ipMq1ReqEnable: json["ipMq1ReqEnable"],
        ipMq2Measure1PEnable: json["ipMq2Measure1PEnable"],
        ipMq2Measure3PEnable: json["ipMq2Measure3PEnable"],
        hpMq2Measure3PEnable: json["hpMq2Measure3PEnable"],
        hpMq2Measure1PEnable: json["hpMq2Measure1PEnable"],
        spMq1ReqEnable: json["spMq1ReqEnable"],
        spSpc1ReqEnable: json["spSpc1ReqEnable"],
        bpMq2Measure3PEnable: json["bpMq2Measure3PEnable"],
        blockInternal: json["blockInternal"],
        ipSkRenderEnable: json["ipSkRenderEnable"],
        hpMq2ReqEnable: json["hpMq2ReqEnable"],
        ipMq2ReqEnable: json["ipMq2ReqEnable"],
        spSpc1Measure1PEnable: json["spSpc1Measure1PEnable"],
        ipMq2RenderEnable: json["ipMq2RenderEnable"],
        adPreviousResponseNullCheck: json["adPreviousResponseNullCheck"],
        spSvplaysInline: json["spSvplaysInline"],
        bpGalReqEnable: json["bpGalReqEnable"],
        cpMq1RenderEnable: json["cpMq1RenderEnable"],
        spSvLoopCompleteEventEnable: json["spSvLoopCompleteEventEnable"],
        spSkDspEnable: json["spSkDSPEnable"],
        ipMq1DspEnable: json["ipMq1DSPEnable"],
        enableHpRedesignXpa: json["enableHpRedesignXPA"],
        enableGetPvId: json["enableGetPvId"],
        ipBr1VideoDspEnabled: json["ipBr1VideoDSPEnabled"],
        videoEarlyloadOffset: json["videoEarlyloadOffset"],
        adPreviewMode: json["adPreviewMode"],
        adShowAtcFieldEnable: json["adShowAtcFieldEnable"],
        hpTpFs1Measure1PEnable: json["hpTpFs1Measure1PEnable"],
        spSvInViewRemoveVideoData: json["spSvInViewRemoveVideoData"],
        adsHpControlGroupXpa: json["adsHpControlGroupXpa"],
        enableVideoTracker: json["enableVideoTracker"],
        videoCcEnable: json["videoCCEnable"],
        hpMq2DspEnable: json["hpMq2DSPEnable"],
        sbaUiEnhanceEnable: json["sbaUiEnhanceEnable"],
        displayUnitWrapperUnmount: json["displayUnitWrapperUnmount"],
        spSvUiAlphaUpdate: json["spSvUiAlphaUpdate"],
        updateAdV2QueryUbsEnable: json["updateAdV2QueryUbsEnable"],
        ipBr1Measure3PEnable: json["ipBr1Measure3PEnable"],
        hpTpFs1Measure3PEnable: json["hpTpFs1Measure3PEnable"],
        cartP13NMeasure1PEnable: json["cartP13nMeasure1PEnable"],
        bpSkDspEnable: json["bpSkDSPEnable"],
        cpSkRenderEnable: json["cpSkRenderEnable"],
        phSkRenderEnable: json["phSkRenderEnable"],
        ipBr1Measure1PEnable: json["ipBr1Measure1PEnable"],
        hpRedesignVisitedXpa: json["hpRedesignVisitedXpa"],
        adManualShelfIdCheck: json["adManualShelfIdCheck"],
        hpGalMeasure3PEnable: json["hpGalMeasure3PEnable"],
        hpGalMeasure1PEnable: json["hpGalMeasure1PEnable"],
        ipGalTopReqEnable: json["ipGalTopReqEnable"],
        spSvHideTabletVideo: json["spSvHideTabletVideo"],
        enableMyitemsBlending: json["enableMyitemsBlending"],
        spSvContainerEnable: json["spSvContainerEnable"],
        shpSkRenderEnable: json["shpSkRenderEnable"],
        displaySbaLogospQs: json["displaySbaLogospQs"],
        adsControlGroupXpa: json["adsControlGroupXpa"],
        adSpClipBeaconEnable: json["adSpClipBeaconEnable"],
        spGalReqEnable: json["spGalReqEnable"],
        spSigMeasure1PEnable: json["spSigMeasure1PEnable"],
        hpTpFs2Measure3PEnable: json["hpTpFs2Measure3PEnable"],
        moatRefactorEnable: json["moatRefactorEnable"],
        hpTpFs2Measure1PEnable: json["hpTpFs2Measure1PEnable"],
        ipBr1EarlyLoadRootMargin: json["ipBr1EarlyLoadRootMargin"],
        typMq1ReqEnable: json["typMq1ReqEnable"],
        bpMq1DspEnable: json["bpMq1DSPEnable"],
        sbaMwebRedesignV2Enable: json["sbaMwebRedesignV2Enable"],
        hpGalRenderEnable: json["hpGalRenderEnable"],
        odpSkRenderEnable: json["odpSkRenderEnable"],
        hpGalMiddleMeasure1PEnable: json["hpGalMiddleMeasure1PEnable"],
        adSpIncrementDecrementCheck: json["adSPIncrementDecrementCheck"],
        hpGpbFs1Measure3PEnable: json["hpGpbFs1Measure3PEnable"],
        spGalMeasure3PEnable: json["spGalMeasure3PEnable"],
        odpSkMeasure1PEnable: json["odpSkMeasure1PEnable"],
        shpSkReqEnable: json["shpSkReqEnable"],
        hpGpbFs3ReqEnable: json["hpGpbFs3ReqEnable"],
        odpSkReqEnable: json["odpSkReqEnable"],
        spIbottaEnable: json["spIbottaEnable"],
        hpGpbFs3RenderEnable: json["hpGpbFs3RenderEnable"],
        typMq1Measure1PEnable: json["typMq1Measure1PEnable"],
        hpGpbFs2RenderEnable: json["hpGpbFs2RenderEnable"],
        displaySpMyItems: json["displaySpMyItems"],
        typSkMeasure3PEnable: json["typSkMeasure3PEnable"],
        buyBoxVariations: json["buyBoxVariations"],
        dspViewabilityTracking: json["dspViewabilityTracking"],
        updateAdV2Query2StoreEnable: json["updateAdV2Query2StoreEnable"],
        hpTpFs2ReqEnable: json["hpTpFs2ReqEnable"],
        enableSearchGalleryMaxWidth: json["enableSearchGalleryMaxWidth"],
        ipBbReqEnable: json["ipBbReqEnable"],
        odpSkConfigModuleLocation: json["odpSkConfigModuleLocation"],
        displayPreviousRenderCheck: json["displayPreviousRenderCheck"],
        enableGalleryItemChanges: json["enableGalleryItemChanges"],
        sbaMwebRedesignV1Enable: json["sbaMwebRedesignV1Enable"],
        spVideoAdsMobileStyling: json["spVideoAdsMobileStyling"],
        hpGpbFs2Measure1PEnable: json["hpGpbFs2Measure1PEnable"],
        displayDeduplication: json["displayDeduplication"],
        enableMyitemsSortPlacementBeacon:
            json["enableMyitemsSortPlacementBeacon"],
        hpGpbFs1RenderEnable: json["hpGpbFs1RenderEnable"],
        display3PVisibilityCheck: json["display3PVisibilityCheck"],
        shpSkMeasure3PEnable: json["shpSkMeasure3PEnable"],
        ipGalTopMeasure1PEnable: json["ipGalTopMeasure1PEnable"],
        hpGpbFs3Measure3PEnable: json["hpGpbFs3Measure3PEnable"],
        cpMq2RenderEnable: json["cpMq2RenderEnable"],
        enableSponsoredRedirectParam: json["enableSponsoredRedirectParam"],
        phSkMeasure1PEnable: json["phSkMeasure1PEnable"],
        ipGalMiddleMeasure1PEnable: json["ipGalMiddleMeasure1PEnable"],
        disableLowPriorityBeacons: json["disableLowPriorityBeacons"],
        adResponseBeaconEnable: json["adResponseBeaconEnable"],
        phSkReqEnable: json["phSkReqEnable"],
        spGalRenderEnable: json["spGalRenderEnable"],
        displayProductPos: json["displayProductPos"],
        enableGalleryMultipleLocations: json["enableGalleryMultipleLocations"],
        ipGalTopRenderEnable: json["ipGalTopRenderEnable"],
        hpGalReqEnable: json["hpGalReqEnable"],
        enableGalleryV2Design: json["enableGalleryV2Design"],
        hpTpFs3Measure3PEnable: json["hpTpFs3Measure3PEnable"],
        hpTpFs3Measure1PEnable: json["hpTpFs3Measure1PEnable"],
        useLegacyBtfCmp: json["useLegacyBtfCmp"],
        hpTpFs2RenderEnable: json["hpTpFs2RenderEnable"],
        hpTpFs1RenderEnable: json["hpTpFs1RenderEnable"],
        displayOrderDeduplication: json["displayOrderDeduplication"],
        enableStackedRecallTracking: json["enableStackedRecallTracking"],
        odpSkConfigLazy: json["odpSkConfigLazy"],
        hpTpFs3RenderEnable: json["hpTpFs3RenderEnable"],
        ipBr1VideoMeasure3PEnable: json["ipBr1VideoMeasure3PEnable"],
        enableMyitemsAtcSortPlacementBeacon:
            json["enableMyitemsAtcSortPlacementBeacon"],
        dspProcessingEnable: json["dspProcessingEnable"],
        enableGalleryReRender: json["enableGalleryReRender"],
        ipBr1DspEnable: json["ipBr1DSPEnable"],
        spMq1DspEnable: json["spMq1DSPEnable"],
        enableDisclaimerIconVar1: json["enableDisclaimerIconVar1"],
        displayPoVAdBlockerEnable: json["displayPoVAdBlockerEnable"],
        enableProductBrandOnBeacon: json["enableProductBrandOnBeacon"],
        spSvMeasure1PEnable: json["spSvMeasure1PEnable"],
        myitemsMeasure1PEnable: json["myitemsMeasure1PEnable"],
        ipGalMiddleReqEnable: json["ipGalMiddleReqEnable"],
        spSvVideoTrackingEnable: json["spSvVideoTrackingEnable"],
        hpGalMiddleReqEnable: json["hpGalMiddleReqEnable"],
        adsXpa: json["adsXpa"],
        displayAddlInfo: json["displayAddlInfo"],
        spSbaReqEnable: json["spSbaReqEnable"],
        typMq1RenderEnable: json["typMq1RenderEnable"],
        bpMq2DspEnable: json["bpMq2DSPEnable"],
        viewableBeaconFix: json["viewableBeaconFix"],
        spSvViewableBeaconEnable: json["spSvViewableBeaconEnable"],
        adsQuickshopBeaconEnable: json["adsQuickshopBeaconEnable"],
        hpGpbFs2ReqEnable: json["hpGpbFs2ReqEnable"],
        ipBbMeasure1PEnable: json["ipBbMeasure1PEnable"],
        bpGalMeasure1PEnable: json["bpGalMeasure1PEnable"],
        hpGalMiddleRenderEnable: json["hpGalMiddleRenderEnable"],
        useSearchBrowseBtfCmp: json["useSearchBrowseBtfCmp"],
        bpGalMeasure3PEnable: json["bpGalMeasure3PEnable"],
        phSkConfigLazy: json["phSkConfigLazy"],
        hpGpbFs1ReqEnable: json["hpGpbFs1ReqEnable"],
        bpGalRenderEnable: json["bpGalRenderEnable"],
        hpTpFs3ReqEnable: json["hpTpFs3ReqEnable"],
        ipBr1RenderEnable: json["ipBr1RenderEnable"],
        pacP13NMeasure1PEnable: json["pacP13nMeasure1PEnable"],
        enableSeasonalColorOption: json["enableSeasonalColorOption"],
        spSvLazyLoadingEnable: json["spSvLazyLoadingEnable"],
        ipGalMiddleRenderEnable: json["ipGalMiddleRenderEnable"],
        displayProductsPos: json["displayProductsPos"],
        spSvMwebLoadingFixEnable: json["spSvMwebLoadingFixEnable"],
        enableBrandBoxEarlyLoad: json["enableBrandBoxEarlyLoad"],
        hpGpbFs1Measure1PEnable: json["hpGpbFs1Measure1PEnable"],
        odpSkMeasure3PEnable: json["odpSkMeasure3PEnable"],
        spGalMeasure1PEnable: json["spGalMeasure1PEnable"],
        hpMq1DspEnable: json["hpMq1DSPEnable"],
        typMq1Measure3PEnable: json["typMq1Measure3PEnable"],
        enableGalleryTitle: json["enableGalleryTitle"],
        typSkRenderEnable: json["typSkRenderEnable"],
        hpOldPageVisitedXpa: json["hpOldPageVisitedXpa"],
        hpP13NMeasure1PEnable: json["hpP13nMeasure1PEnable"],
        typSkMeasure1PEnable: json["typSkMeasure1PEnable"],
        spSvGridPositionBeacon: json["spSvGridPositionBeacon"],
        adViewableGmBeaconCheck: json["adViewableGmBeaconCheck"],
        phSkConfigModuleLocation: json["phSkConfigModuleLocation"],
        lazyRenderCmp: json["lazyRenderCmp"],
        ipBbLazyLoadingEnable: json["ipBbLazyLoadingEnable"],
        displayIdentifyAdServer: json["displayIdentifyAdServer"],
        ipMq2DspEnable: json["ipMq2DSPEnable"],
        phSkMeasure3PEnable: json["phSkMeasure3PEnable"],
        spSbaMeasure1PEnable: json["spSbaMeasure1PEnable"],
        typSkReqEnable: json["typSkReqEnable"],
        hpGpbFs3Measure1PEnable: json["hpGpbFs3Measure1PEnable"],
        displayPpmMode: json["displayPPMMode"],
        spSvRenderEnable: json["spSvRenderEnable"],
        ipSkDspEnable: json["ipSkDSPEnable"],
        addSpVideoNaBeacon: json["addSpVideoNaBeacon"],
        ipBr1MinScreenHeight: json["ipBr1MinScreenHeight"],
        ipGalTopMeasure3PEnable: json["ipGalTopMeasure3PEnable"],
        ipP13NMeasure1PEnable: json["ipP13nMeasure1PEnable"],
        enableAdSmilePricing: json["enableAdSmilePricing"],
        spSvReqEnable: json["spSvReqEnable"],
        hpTpFs1ReqEnable: json["hpTpFs1ReqEnable"],
        enableLegalDisclaimerSponsored: json["enableLegalDisclaimerSponsored"],
        adCategoryTakeoverCheck: json["adCategoryTakeoverCheck"],
        hpGpbFs2Measure3PEnable: json["hpGpbFs2Measure3PEnable"],
        shpSkMeasure1PEnable: json["shpSkMeasure1PEnable"],
        hpGalMiddleMeasure3PEnable: json["hpGalMiddleMeasure3PEnable"],
        enableVideoUiErrorState: json["enableVideoUIErrorState"],
        spMq2DspEnable: json["spMq2DSPEnable"],
        enableSvTestAds: json["enableSvTestAds"],
        hpPovLockoutPriorityEnable: json["hpPovLockoutPriorityEnable"],
        ipBr1ReqEnable: json["ipBr1ReqEnable"],
        ipGalMiddleMeasure3PEnable: json["ipGalMiddleMeasure3PEnable"],
      );

  Map<String, dynamic> toJson() => {
        "spMq2Measure3PEnable": spMq2Measure3PEnable,
        "spMq2Measure1PEnable": spMq2Measure1PEnable,
        "ipMq1RenderEnable": ipMq1RenderEnable,
        "ipSkReqEnable": ipSkReqEnable,
        "bpMq2Measure1PEnable": bpMq2Measure1PEnable,
        "measure3PImpEnable": measure3PImpEnable,
        "cacheBusterTimeDiffMs": cacheBusterTimeDiffMs,
        "bpSkReqEnable": bpSkReqEnable,
        "bpMq2ReqEnable": bpMq2ReqEnable,
        "spMq1RenderEnable": spMq1RenderEnable,
        "bpSkMeasure1PEnable": bpSkMeasure1PEnable,
        "bpSkMeasure3PEnable": bpSkMeasure3PEnable,
        "spMq2RenderEnable": spMq2RenderEnable,
        "ipSpc2Measure1PEnable": ipSpc2Measure1PEnable,
        "hpMq1Measure1PEnable": hpMq1Measure1PEnable,
        "hpMq1Measure3PEnable": hpMq1Measure3PEnable,
        "spSkRenderEnable": spSkRenderEnable,
        "bpSpc1ReqEnable": bpSpc1ReqEnable,
        "bpMq1ReqEnable": bpMq1ReqEnable,
        "displayCheckIp": displayCheckIp,
        "bpMq1RenderEnable": bpMq1RenderEnable,
        "hpMq2RenderEnable": hpMq2RenderEnable,
        "moatIvt": moatIvt,
        "bpMq2RenderEnable": bpMq2RenderEnable,
        "hpMq1RenderEnable": hpMq1RenderEnable,
        "ipSpc2ReqEnable": ipSpc2ReqEnable,
        "spSkMeasure1PEnable": spSkMeasure1PEnable,
        "spSkMeasure3PEnable": spSkMeasure3PEnable,
        "bpSpc1Measure1PEnable": bpSpc1Measure1PEnable,
        "spMq1Measure1PEnable": spMq1Measure1PEnable,
        "ipSkMeasure1PEnable": ipSkMeasure1PEnable,
        "spMq1Measure3PEnable": spMq1Measure3PEnable,
        "bpMq1Measure1PEnable": bpMq1Measure1PEnable,
        "ipSpc1ReqEnable": ipSpc1ReqEnable,
        "spMq2ReqEnable": spMq2ReqEnable,
        "bpSkRenderEnable": bpSkRenderEnable,
        "ipMq1Measure3PEnable": ipMq1Measure3PEnable,
        "ipMq1Measure1PEnable": ipMq1Measure1PEnable,
        "spSkReqEnable": spSkReqEnable,
        "safeframeURL": safeframeUrl,
        "hpMq1ReqEnable": hpMq1ReqEnable,
        "bpMq1Measure3PEnable": bpMq1Measure3PEnable,
        "ipSpc1Measure1PEnable": ipSpc1Measure1PEnable,
        "bpBigMeasure1PEnable": bpBigMeasure1PEnable,
        "ipSkMeasure3PEnable": ipSkMeasure3PEnable,
        "ipMq1ReqEnable": ipMq1ReqEnable,
        "ipMq2Measure1PEnable": ipMq2Measure1PEnable,
        "ipMq2Measure3PEnable": ipMq2Measure3PEnable,
        "hpMq2Measure3PEnable": hpMq2Measure3PEnable,
        "hpMq2Measure1PEnable": hpMq2Measure1PEnable,
        "spMq1ReqEnable": spMq1ReqEnable,
        "spSpc1ReqEnable": spSpc1ReqEnable,
        "bpMq2Measure3PEnable": bpMq2Measure3PEnable,
        "blockInternal": blockInternal,
        "ipSkRenderEnable": ipSkRenderEnable,
        "hpMq2ReqEnable": hpMq2ReqEnable,
        "ipMq2ReqEnable": ipMq2ReqEnable,
        "spSpc1Measure1PEnable": spSpc1Measure1PEnable,
        "ipMq2RenderEnable": ipMq2RenderEnable,
        "adPreviousResponseNullCheck": adPreviousResponseNullCheck,
        "spSvplaysInline": spSvplaysInline,
        "bpGalReqEnable": bpGalReqEnable,
        "cpMq1RenderEnable": cpMq1RenderEnable,
        "spSvLoopCompleteEventEnable": spSvLoopCompleteEventEnable,
        "spSkDSPEnable": spSkDspEnable,
        "ipMq1DSPEnable": ipMq1DspEnable,
        "enableHpRedesignXPA": enableHpRedesignXpa,
        "enableGetPvId": enableGetPvId,
        "ipBr1VideoDSPEnabled": ipBr1VideoDspEnabled,
        "videoEarlyloadOffset": videoEarlyloadOffset,
        "adPreviewMode": adPreviewMode,
        "adShowAtcFieldEnable": adShowAtcFieldEnable,
        "hpTpFs1Measure1PEnable": hpTpFs1Measure1PEnable,
        "spSvInViewRemoveVideoData": spSvInViewRemoveVideoData,
        "adsHpControlGroupXpa": adsHpControlGroupXpa,
        "enableVideoTracker": enableVideoTracker,
        "videoCCEnable": videoCcEnable,
        "hpMq2DSPEnable": hpMq2DspEnable,
        "sbaUiEnhanceEnable": sbaUiEnhanceEnable,
        "displayUnitWrapperUnmount": displayUnitWrapperUnmount,
        "spSvUiAlphaUpdate": spSvUiAlphaUpdate,
        "updateAdV2QueryUbsEnable": updateAdV2QueryUbsEnable,
        "ipBr1Measure3PEnable": ipBr1Measure3PEnable,
        "hpTpFs1Measure3PEnable": hpTpFs1Measure3PEnable,
        "cartP13nMeasure1PEnable": cartP13NMeasure1PEnable,
        "bpSkDSPEnable": bpSkDspEnable,
        "cpSkRenderEnable": cpSkRenderEnable,
        "phSkRenderEnable": phSkRenderEnable,
        "ipBr1Measure1PEnable": ipBr1Measure1PEnable,
        "hpRedesignVisitedXpa": hpRedesignVisitedXpa,
        "adManualShelfIdCheck": adManualShelfIdCheck,
        "hpGalMeasure3PEnable": hpGalMeasure3PEnable,
        "hpGalMeasure1PEnable": hpGalMeasure1PEnable,
        "ipGalTopReqEnable": ipGalTopReqEnable,
        "spSvHideTabletVideo": spSvHideTabletVideo,
        "enableMyitemsBlending": enableMyitemsBlending,
        "spSvContainerEnable": spSvContainerEnable,
        "shpSkRenderEnable": shpSkRenderEnable,
        "displaySbaLogospQs": displaySbaLogospQs,
        "adsControlGroupXpa": adsControlGroupXpa,
        "adSpClipBeaconEnable": adSpClipBeaconEnable,
        "spGalReqEnable": spGalReqEnable,
        "spSigMeasure1PEnable": spSigMeasure1PEnable,
        "hpTpFs2Measure3PEnable": hpTpFs2Measure3PEnable,
        "moatRefactorEnable": moatRefactorEnable,
        "hpTpFs2Measure1PEnable": hpTpFs2Measure1PEnable,
        "ipBr1EarlyLoadRootMargin": ipBr1EarlyLoadRootMargin,
        "typMq1ReqEnable": typMq1ReqEnable,
        "bpMq1DSPEnable": bpMq1DspEnable,
        "sbaMwebRedesignV2Enable": sbaMwebRedesignV2Enable,
        "hpGalRenderEnable": hpGalRenderEnable,
        "odpSkRenderEnable": odpSkRenderEnable,
        "hpGalMiddleMeasure1PEnable": hpGalMiddleMeasure1PEnable,
        "adSPIncrementDecrementCheck": adSpIncrementDecrementCheck,
        "hpGpbFs1Measure3PEnable": hpGpbFs1Measure3PEnable,
        "spGalMeasure3PEnable": spGalMeasure3PEnable,
        "odpSkMeasure1PEnable": odpSkMeasure1PEnable,
        "shpSkReqEnable": shpSkReqEnable,
        "hpGpbFs3ReqEnable": hpGpbFs3ReqEnable,
        "odpSkReqEnable": odpSkReqEnable,
        "spIbottaEnable": spIbottaEnable,
        "hpGpbFs3RenderEnable": hpGpbFs3RenderEnable,
        "typMq1Measure1PEnable": typMq1Measure1PEnable,
        "hpGpbFs2RenderEnable": hpGpbFs2RenderEnable,
        "displaySpMyItems": displaySpMyItems,
        "typSkMeasure3PEnable": typSkMeasure3PEnable,
        "buyBoxVariations": buyBoxVariations,
        "dspViewabilityTracking": dspViewabilityTracking,
        "updateAdV2Query2StoreEnable": updateAdV2Query2StoreEnable,
        "hpTpFs2ReqEnable": hpTpFs2ReqEnable,
        "enableSearchGalleryMaxWidth": enableSearchGalleryMaxWidth,
        "ipBbReqEnable": ipBbReqEnable,
        "odpSkConfigModuleLocation": odpSkConfigModuleLocation,
        "displayPreviousRenderCheck": displayPreviousRenderCheck,
        "enableGalleryItemChanges": enableGalleryItemChanges,
        "sbaMwebRedesignV1Enable": sbaMwebRedesignV1Enable,
        "spVideoAdsMobileStyling": spVideoAdsMobileStyling,
        "hpGpbFs2Measure1PEnable": hpGpbFs2Measure1PEnable,
        "displayDeduplication": displayDeduplication,
        "enableMyitemsSortPlacementBeacon": enableMyitemsSortPlacementBeacon,
        "hpGpbFs1RenderEnable": hpGpbFs1RenderEnable,
        "display3PVisibilityCheck": display3PVisibilityCheck,
        "shpSkMeasure3PEnable": shpSkMeasure3PEnable,
        "ipGalTopMeasure1PEnable": ipGalTopMeasure1PEnable,
        "hpGpbFs3Measure3PEnable": hpGpbFs3Measure3PEnable,
        "cpMq2RenderEnable": cpMq2RenderEnable,
        "enableSponsoredRedirectParam": enableSponsoredRedirectParam,
        "phSkMeasure1PEnable": phSkMeasure1PEnable,
        "ipGalMiddleMeasure1PEnable": ipGalMiddleMeasure1PEnable,
        "disableLowPriorityBeacons": disableLowPriorityBeacons,
        "adResponseBeaconEnable": adResponseBeaconEnable,
        "phSkReqEnable": phSkReqEnable,
        "spGalRenderEnable": spGalRenderEnable,
        "displayProductPos": displayProductPos,
        "enableGalleryMultipleLocations": enableGalleryMultipleLocations,
        "ipGalTopRenderEnable": ipGalTopRenderEnable,
        "hpGalReqEnable": hpGalReqEnable,
        "enableGalleryV2Design": enableGalleryV2Design,
        "hpTpFs3Measure3PEnable": hpTpFs3Measure3PEnable,
        "hpTpFs3Measure1PEnable": hpTpFs3Measure1PEnable,
        "useLegacyBtfCmp": useLegacyBtfCmp,
        "hpTpFs2RenderEnable": hpTpFs2RenderEnable,
        "hpTpFs1RenderEnable": hpTpFs1RenderEnable,
        "displayOrderDeduplication": displayOrderDeduplication,
        "enableStackedRecallTracking": enableStackedRecallTracking,
        "odpSkConfigLazy": odpSkConfigLazy,
        "hpTpFs3RenderEnable": hpTpFs3RenderEnable,
        "ipBr1VideoMeasure3PEnable": ipBr1VideoMeasure3PEnable,
        "enableMyitemsAtcSortPlacementBeacon":
            enableMyitemsAtcSortPlacementBeacon,
        "dspProcessingEnable": dspProcessingEnable,
        "enableGalleryReRender": enableGalleryReRender,
        "ipBr1DSPEnable": ipBr1DspEnable,
        "spMq1DSPEnable": spMq1DspEnable,
        "enableDisclaimerIconVar1": enableDisclaimerIconVar1,
        "displayPoVAdBlockerEnable": displayPoVAdBlockerEnable,
        "enableProductBrandOnBeacon": enableProductBrandOnBeacon,
        "spSvMeasure1PEnable": spSvMeasure1PEnable,
        "myitemsMeasure1PEnable": myitemsMeasure1PEnable,
        "ipGalMiddleReqEnable": ipGalMiddleReqEnable,
        "spSvVideoTrackingEnable": spSvVideoTrackingEnable,
        "hpGalMiddleReqEnable": hpGalMiddleReqEnable,
        "adsXpa": adsXpa,
        "displayAddlInfo": displayAddlInfo,
        "spSbaReqEnable": spSbaReqEnable,
        "typMq1RenderEnable": typMq1RenderEnable,
        "bpMq2DSPEnable": bpMq2DspEnable,
        "viewableBeaconFix": viewableBeaconFix,
        "spSvViewableBeaconEnable": spSvViewableBeaconEnable,
        "adsQuickshopBeaconEnable": adsQuickshopBeaconEnable,
        "hpGpbFs2ReqEnable": hpGpbFs2ReqEnable,
        "ipBbMeasure1PEnable": ipBbMeasure1PEnable,
        "bpGalMeasure1PEnable": bpGalMeasure1PEnable,
        "hpGalMiddleRenderEnable": hpGalMiddleRenderEnable,
        "useSearchBrowseBtfCmp": useSearchBrowseBtfCmp,
        "bpGalMeasure3PEnable": bpGalMeasure3PEnable,
        "phSkConfigLazy": phSkConfigLazy,
        "hpGpbFs1ReqEnable": hpGpbFs1ReqEnable,
        "bpGalRenderEnable": bpGalRenderEnable,
        "hpTpFs3ReqEnable": hpTpFs3ReqEnable,
        "ipBr1RenderEnable": ipBr1RenderEnable,
        "pacP13nMeasure1PEnable": pacP13NMeasure1PEnable,
        "enableSeasonalColorOption": enableSeasonalColorOption,
        "spSvLazyLoadingEnable": spSvLazyLoadingEnable,
        "ipGalMiddleRenderEnable": ipGalMiddleRenderEnable,
        "displayProductsPos": displayProductsPos,
        "spSvMwebLoadingFixEnable": spSvMwebLoadingFixEnable,
        "enableBrandBoxEarlyLoad": enableBrandBoxEarlyLoad,
        "hpGpbFs1Measure1PEnable": hpGpbFs1Measure1PEnable,
        "odpSkMeasure3PEnable": odpSkMeasure3PEnable,
        "spGalMeasure1PEnable": spGalMeasure1PEnable,
        "hpMq1DSPEnable": hpMq1DspEnable,
        "typMq1Measure3PEnable": typMq1Measure3PEnable,
        "enableGalleryTitle": enableGalleryTitle,
        "typSkRenderEnable": typSkRenderEnable,
        "hpOldPageVisitedXpa": hpOldPageVisitedXpa,
        "hpP13nMeasure1PEnable": hpP13NMeasure1PEnable,
        "typSkMeasure1PEnable": typSkMeasure1PEnable,
        "spSvGridPositionBeacon": spSvGridPositionBeacon,
        "adViewableGmBeaconCheck": adViewableGmBeaconCheck,
        "phSkConfigModuleLocation": phSkConfigModuleLocation,
        "lazyRenderCmp": lazyRenderCmp,
        "ipBbLazyLoadingEnable": ipBbLazyLoadingEnable,
        "displayIdentifyAdServer": displayIdentifyAdServer,
        "ipMq2DSPEnable": ipMq2DspEnable,
        "phSkMeasure3PEnable": phSkMeasure3PEnable,
        "spSbaMeasure1PEnable": spSbaMeasure1PEnable,
        "typSkReqEnable": typSkReqEnable,
        "hpGpbFs3Measure1PEnable": hpGpbFs3Measure1PEnable,
        "displayPPMMode": displayPpmMode,
        "spSvRenderEnable": spSvRenderEnable,
        "ipSkDSPEnable": ipSkDspEnable,
        "addSpVideoNaBeacon": addSpVideoNaBeacon,
        "ipBr1MinScreenHeight": ipBr1MinScreenHeight,
        "ipGalTopMeasure3PEnable": ipGalTopMeasure3PEnable,
        "ipP13nMeasure1PEnable": ipP13NMeasure1PEnable,
        "enableAdSmilePricing": enableAdSmilePricing,
        "spSvReqEnable": spSvReqEnable,
        "hpTpFs1ReqEnable": hpTpFs1ReqEnable,
        "enableLegalDisclaimerSponsored": enableLegalDisclaimerSponsored,
        "adCategoryTakeoverCheck": adCategoryTakeoverCheck,
        "hpGpbFs2Measure3PEnable": hpGpbFs2Measure3PEnable,
        "shpSkMeasure1PEnable": shpSkMeasure1PEnable,
        "hpGalMiddleMeasure3PEnable": hpGalMiddleMeasure3PEnable,
        "enableVideoUIErrorState": enableVideoUiErrorState,
        "spMq2DSPEnable": spMq2DspEnable,
        "enableSvTestAds": enableSvTestAds,
        "hpPovLockoutPriorityEnable": hpPovLockoutPriorityEnable,
        "ipBr1ReqEnable": ipBr1ReqEnable,
        "ipGalMiddleMeasure3PEnable": ipGalMiddleMeasure3PEnable,
      };
}

class Bookslot {
  Bookslot({
    required this.all,
  });

  BookslotAll all;

  factory Bookslot.fromJson(Map<String, dynamic> json) => Bookslot(
        all: BookslotAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class BookslotAll {
  BookslotAll({
    required this.hideStoreChooserDefaultAlert,
    required this.enableWirelessPostpaid,
    required this.walmartPlusFreeDelivery,
    required this.tempoCacheExpirationInSeconds,
    required this.enableWalmartPlusIntegratedSignUp,
    required this.hidePickupSlotPrice,
    required this.alcoholRestrictedSlotsFilterEnable,
    required this.enableBlockRegistrantAddressDelivery,
    required this.enableFulfillmentIntent,
    required this.enableInHomeSlotsQueryHeader,
    required this.mergeSlotsEnable,
    required this.enablePickupOnShippingIntent,
    required this.enableWalmartPlus,
    required this.nodeSelectableOnlineEnable,
    required this.gmStoreMessageForNoUspSlot,
    required this.enableZeroDeliverySlotPriceFree,
    required this.enableEvergreenSlot,
    required this.projectThunderbolt,
    required this.enableReReserveSlot,
    required this.enableEvergreenFee,
    required this.enablePriorityTimesIntegratedSignup,
    required this.expressDeliveryOnlyStores,
    required this.evergreenNonMemberHolidayDiscountStrikeoutPrice,
    required this.disableSlotShortcutInGic,
    required this.enableEvergreenHolidayDiscount,
    required this.disableMergeAndGetCartCsr,
    required this.enableWplusCashback,
    required this.enableAvailableForInstallationText,
    required this.enableUseCurrentLocation,
    required this.enableEarliestAvailableSlotPreselection,
    required this.enableInHomeAmPmSlotsPhase2,
    required this.enablePassCartIdAcidCheck,
    required this.enableUseCurrentLocationFromBrowser,
    required this.bookslotShortcutMaxSlotReqCount,
    required this.enableNoSlotPreselectionOnTabSwitch,
    required this.evergreenWPlusMemberHolidayDiscountStrikeoutPrice,
    required this.enableSlotPreSelectionV2,
    required this.enableUnauthorizedAccessToCartErrorFix,
    required this.enableEarliestAvailableDayPreselection,
    required this.enableNoPickupSlotSelectionForDefaultStore,
    required this.enableDeliveryFromStoreInfoModule,
    required this.enableStoreHours,
    required this.enableDeliveryAddressFromSlotData,
    required this.enableWplusOldBannerUi,
    required this.enableHideInstoreCheckmark,
    required this.enablePriorityTimes,
    required this.enableReservationNotAcceptableFix,
    required this.enableStoreSelectorFeedback,
    required this.enableStoreSelectorMarketplacePickup,
    required this.enableAllSlotsUnavailableMessageTypesFix,
    required this.enableAccStoreSelectorOnSlotsUnavailable,
    required this.enableFulfillmentOptionUrlParam,
    required this.maxCountOfStoresForInventory,
    required this.disableFreeDeliveryBannerForExpressOnlyStores,
    required this.enablePassCartIdAcidCheckStoreSelector,
    required this.enablePreselectionV2UserIntentOverReservation,
    required this.enableInHomeAmPmSlots,
    required this.enableWplusRemoveBannersCardCheck,
    required this.enableCartFulfillmentOption,
    required this.enableNoSlotsAvailableScreen,
    required this.enableStoreSelectorUnauthorizedAccessToCartErrorFix,
  });

  bool hideStoreChooserDefaultAlert;
  bool enableWirelessPostpaid;
  bool walmartPlusFreeDelivery;
  int tempoCacheExpirationInSeconds;
  bool enableWalmartPlusIntegratedSignUp;
  bool hidePickupSlotPrice;
  bool alcoholRestrictedSlotsFilterEnable;
  bool enableBlockRegistrantAddressDelivery;
  bool enableFulfillmentIntent;
  bool enableInHomeSlotsQueryHeader;
  bool mergeSlotsEnable;
  bool enablePickupOnShippingIntent;
  bool enableWalmartPlus;
  bool nodeSelectableOnlineEnable;
  bool gmStoreMessageForNoUspSlot;
  bool enableZeroDeliverySlotPriceFree;
  bool enableEvergreenSlot;
  bool projectThunderbolt;
  bool enableReReserveSlot;
  bool enableEvergreenFee;
  bool enablePriorityTimesIntegratedSignup;
  bool expressDeliveryOnlyStores;
  String evergreenNonMemberHolidayDiscountStrikeoutPrice;
  bool disableSlotShortcutInGic;
  bool enableEvergreenHolidayDiscount;
  bool disableMergeAndGetCartCsr;
  bool enableWplusCashback;
  bool enableAvailableForInstallationText;
  bool enableUseCurrentLocation;
  bool enableEarliestAvailableSlotPreselection;
  bool enableInHomeAmPmSlotsPhase2;
  bool enablePassCartIdAcidCheck;
  bool enableUseCurrentLocationFromBrowser;
  int bookslotShortcutMaxSlotReqCount;
  bool enableNoSlotPreselectionOnTabSwitch;
  String evergreenWPlusMemberHolidayDiscountStrikeoutPrice;
  bool enableSlotPreSelectionV2;
  bool enableUnauthorizedAccessToCartErrorFix;
  bool enableEarliestAvailableDayPreselection;
  bool enableNoPickupSlotSelectionForDefaultStore;
  bool enableDeliveryFromStoreInfoModule;
  bool enableStoreHours;
  bool enableDeliveryAddressFromSlotData;
  bool enableWplusOldBannerUi;
  bool enableHideInstoreCheckmark;
  bool enablePriorityTimes;
  bool enableReservationNotAcceptableFix;
  bool enableStoreSelectorFeedback;
  bool enableStoreSelectorMarketplacePickup;
  bool enableAllSlotsUnavailableMessageTypesFix;
  bool enableAccStoreSelectorOnSlotsUnavailable;
  bool enableFulfillmentOptionUrlParam;
  int maxCountOfStoresForInventory;
  bool disableFreeDeliveryBannerForExpressOnlyStores;
  bool enablePassCartIdAcidCheckStoreSelector;
  bool enablePreselectionV2UserIntentOverReservation;
  bool enableInHomeAmPmSlots;
  bool enableWplusRemoveBannersCardCheck;
  bool enableCartFulfillmentOption;
  bool enableNoSlotsAvailableScreen;
  bool enableStoreSelectorUnauthorizedAccessToCartErrorFix;

  factory BookslotAll.fromJson(Map<String, dynamic> json) => BookslotAll(
        hideStoreChooserDefaultAlert: json["hideStoreChooserDefaultAlert"],
        enableWirelessPostpaid: json["enableWirelessPostpaid"],
        walmartPlusFreeDelivery: json["walmartPlusFreeDelivery"],
        tempoCacheExpirationInSeconds: json["tempoCacheExpirationInSeconds"],
        enableWalmartPlusIntegratedSignUp:
            json["enableWalmartPlusIntegratedSignUp"],
        hidePickupSlotPrice: json["hidePickupSlotPrice"],
        alcoholRestrictedSlotsFilterEnable:
            json["alcoholRestrictedSlotsFilterEnable"],
        enableBlockRegistrantAddressDelivery:
            json["enableBlockRegistrantAddressDelivery"],
        enableFulfillmentIntent: json["enableFulfillmentIntent"],
        enableInHomeSlotsQueryHeader: json["enableInHomeSlotsQueryHeader"],
        mergeSlotsEnable: json["mergeSlotsEnable"],
        enablePickupOnShippingIntent: json["enablePickupOnShippingIntent"],
        enableWalmartPlus: json["enableWalmartPlus"],
        nodeSelectableOnlineEnable: json["nodeSelectableOnlineEnable"],
        gmStoreMessageForNoUspSlot: json["gmStoreMessageForNoUSPSlot"],
        enableZeroDeliverySlotPriceFree:
            json["enableZeroDeliverySlotPriceFree"],
        enableEvergreenSlot: json["enableEvergreenSlot"],
        projectThunderbolt: json["projectThunderbolt"],
        enableReReserveSlot: json["enableReReserveSlot"],
        enableEvergreenFee: json["enableEvergreenFee"],
        enablePriorityTimesIntegratedSignup:
            json["enablePriorityTimesIntegratedSignup"],
        expressDeliveryOnlyStores: json["expressDeliveryOnlyStores"],
        evergreenNonMemberHolidayDiscountStrikeoutPrice:
            json["evergreenNonMemberHolidayDiscountStrikeoutPrice"],
        disableSlotShortcutInGic: json["disableSlotShortcutInGIC"],
        enableEvergreenHolidayDiscount: json["enableEvergreenHolidayDiscount"],
        disableMergeAndGetCartCsr: json["disableMergeAndGetCartCSR"],
        enableWplusCashback: json["enableWplusCashback"],
        enableAvailableForInstallationText:
            json["enableAvailableForInstallationText"],
        enableUseCurrentLocation: json["enableUseCurrentLocation"],
        enableEarliestAvailableSlotPreselection:
            json["enableEarliestAvailableSlotPreselection"],
        enableInHomeAmPmSlotsPhase2: json["enableInHomeAmPmSlotsPhase2"],
        enablePassCartIdAcidCheck: json["enablePassCartIdAcidCheck"],
        enableUseCurrentLocationFromBrowser:
            json["enableUseCurrentLocationFromBrowser"],
        bookslotShortcutMaxSlotReqCount:
            json["bookslotShortcutMaxSlotReqCount"],
        enableNoSlotPreselectionOnTabSwitch:
            json["enableNoSlotPreselectionOnTabSwitch"],
        evergreenWPlusMemberHolidayDiscountStrikeoutPrice:
            json["evergreenWPlusMemberHolidayDiscountStrikeoutPrice"],
        enableSlotPreSelectionV2: json["enableSlotPreSelectionV2"],
        enableUnauthorizedAccessToCartErrorFix:
            json["enableUnauthorizedAccessToCartErrorFix"],
        enableEarliestAvailableDayPreselection:
            json["enableEarliestAvailableDayPreselection"],
        enableNoPickupSlotSelectionForDefaultStore:
            json["enableNoPickupSlotSelectionForDefaultStore"],
        enableDeliveryFromStoreInfoModule:
            json["enableDeliveryFromStoreInfoModule"],
        enableStoreHours: json["enableStoreHours"],
        enableDeliveryAddressFromSlotData:
            json["enableDeliveryAddressFromSlotData"],
        enableWplusOldBannerUi: json["enableWplusOldBannerUI"],
        enableHideInstoreCheckmark: json["enableHideInstoreCheckmark"],
        enablePriorityTimes: json["enablePriorityTimes"],
        enableReservationNotAcceptableFix:
            json["enableReservationNotAcceptableFix"],
        enableStoreSelectorFeedback: json["enableStoreSelectorFeedback"],
        enableStoreSelectorMarketplacePickup:
            json["enableStoreSelectorMarketplacePickup"],
        enableAllSlotsUnavailableMessageTypesFix:
            json["enableAllSlotsUnavailableMessageTypesFix"],
        enableAccStoreSelectorOnSlotsUnavailable:
            json["enableACCStoreSelectorOnSlotsUnavailable"],
        enableFulfillmentOptionUrlParam:
            json["enableFulfillmentOptionURLParam"],
        maxCountOfStoresForInventory: json["maxCountOfStoresForInventory"],
        disableFreeDeliveryBannerForExpressOnlyStores:
            json["disableFreeDeliveryBannerForExpressOnlyStores"],
        enablePassCartIdAcidCheckStoreSelector:
            json["enablePassCartIdAcidCheckStoreSelector"],
        enablePreselectionV2UserIntentOverReservation:
            json["enablePreselectionV2UserIntentOverReservation"],
        enableInHomeAmPmSlots: json["enableInHomeAmPmSlots"],
        enableWplusRemoveBannersCardCheck:
            json["enableWplusRemoveBannersCardCheck"],
        enableCartFulfillmentOption: json["enableCartFulfillmentOption"],
        enableNoSlotsAvailableScreen: json["enableNoSlotsAvailableScreen"],
        enableStoreSelectorUnauthorizedAccessToCartErrorFix:
            json["enableStoreSelectorUnauthorizedAccessToCartErrorFix"],
      );

  Map<String, dynamic> toJson() => {
        "hideStoreChooserDefaultAlert": hideStoreChooserDefaultAlert,
        "enableWirelessPostpaid": enableWirelessPostpaid,
        "walmartPlusFreeDelivery": walmartPlusFreeDelivery,
        "tempoCacheExpirationInSeconds": tempoCacheExpirationInSeconds,
        "enableWalmartPlusIntegratedSignUp": enableWalmartPlusIntegratedSignUp,
        "hidePickupSlotPrice": hidePickupSlotPrice,
        "alcoholRestrictedSlotsFilterEnable":
            alcoholRestrictedSlotsFilterEnable,
        "enableBlockRegistrantAddressDelivery":
            enableBlockRegistrantAddressDelivery,
        "enableFulfillmentIntent": enableFulfillmentIntent,
        "enableInHomeSlotsQueryHeader": enableInHomeSlotsQueryHeader,
        "mergeSlotsEnable": mergeSlotsEnable,
        "enablePickupOnShippingIntent": enablePickupOnShippingIntent,
        "enableWalmartPlus": enableWalmartPlus,
        "nodeSelectableOnlineEnable": nodeSelectableOnlineEnable,
        "gmStoreMessageForNoUSPSlot": gmStoreMessageForNoUspSlot,
        "enableZeroDeliverySlotPriceFree": enableZeroDeliverySlotPriceFree,
        "enableEvergreenSlot": enableEvergreenSlot,
        "projectThunderbolt": projectThunderbolt,
        "enableReReserveSlot": enableReReserveSlot,
        "enableEvergreenFee": enableEvergreenFee,
        "enablePriorityTimesIntegratedSignup":
            enablePriorityTimesIntegratedSignup,
        "expressDeliveryOnlyStores": expressDeliveryOnlyStores,
        "evergreenNonMemberHolidayDiscountStrikeoutPrice":
            evergreenNonMemberHolidayDiscountStrikeoutPrice,
        "disableSlotShortcutInGIC": disableSlotShortcutInGic,
        "enableEvergreenHolidayDiscount": enableEvergreenHolidayDiscount,
        "disableMergeAndGetCartCSR": disableMergeAndGetCartCsr,
        "enableWplusCashback": enableWplusCashback,
        "enableAvailableForInstallationText":
            enableAvailableForInstallationText,
        "enableUseCurrentLocation": enableUseCurrentLocation,
        "enableEarliestAvailableSlotPreselection":
            enableEarliestAvailableSlotPreselection,
        "enableInHomeAmPmSlotsPhase2": enableInHomeAmPmSlotsPhase2,
        "enablePassCartIdAcidCheck": enablePassCartIdAcidCheck,
        "enableUseCurrentLocationFromBrowser":
            enableUseCurrentLocationFromBrowser,
        "bookslotShortcutMaxSlotReqCount": bookslotShortcutMaxSlotReqCount,
        "enableNoSlotPreselectionOnTabSwitch":
            enableNoSlotPreselectionOnTabSwitch,
        "evergreenWPlusMemberHolidayDiscountStrikeoutPrice":
            evergreenWPlusMemberHolidayDiscountStrikeoutPrice,
        "enableSlotPreSelectionV2": enableSlotPreSelectionV2,
        "enableUnauthorizedAccessToCartErrorFix":
            enableUnauthorizedAccessToCartErrorFix,
        "enableEarliestAvailableDayPreselection":
            enableEarliestAvailableDayPreselection,
        "enableNoPickupSlotSelectionForDefaultStore":
            enableNoPickupSlotSelectionForDefaultStore,
        "enableDeliveryFromStoreInfoModule": enableDeliveryFromStoreInfoModule,
        "enableStoreHours": enableStoreHours,
        "enableDeliveryAddressFromSlotData": enableDeliveryAddressFromSlotData,
        "enableWplusOldBannerUI": enableWplusOldBannerUi,
        "enableHideInstoreCheckmark": enableHideInstoreCheckmark,
        "enablePriorityTimes": enablePriorityTimes,
        "enableReservationNotAcceptableFix": enableReservationNotAcceptableFix,
        "enableStoreSelectorFeedback": enableStoreSelectorFeedback,
        "enableStoreSelectorMarketplacePickup":
            enableStoreSelectorMarketplacePickup,
        "enableAllSlotsUnavailableMessageTypesFix":
            enableAllSlotsUnavailableMessageTypesFix,
        "enableACCStoreSelectorOnSlotsUnavailable":
            enableAccStoreSelectorOnSlotsUnavailable,
        "enableFulfillmentOptionURLParam": enableFulfillmentOptionUrlParam,
        "maxCountOfStoresForInventory": maxCountOfStoresForInventory,
        "disableFreeDeliveryBannerForExpressOnlyStores":
            disableFreeDeliveryBannerForExpressOnlyStores,
        "enablePassCartIdAcidCheckStoreSelector":
            enablePassCartIdAcidCheckStoreSelector,
        "enablePreselectionV2UserIntentOverReservation":
            enablePreselectionV2UserIntentOverReservation,
        "enableInHomeAmPmSlots": enableInHomeAmPmSlots,
        "enableWplusRemoveBannersCardCheck": enableWplusRemoveBannersCardCheck,
        "enableCartFulfillmentOption": enableCartFulfillmentOption,
        "enableNoSlotsAvailableScreen": enableNoSlotsAvailableScreen,
        "enableStoreSelectorUnauthorizedAccessToCartErrorFix":
            enableStoreSelectorUnauthorizedAccessToCartErrorFix,
      };
}

class Cart {
  Cart({
    required this.all,
  });

  CartAll all;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        all: CartAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class CartAll {
  CartAll({
    required this.enableOmniPromise,
    required this.enableWirelessPostpaid,
    required this.enableCapOne,
    required this.sflCountPerPagination,
    required this.enableFulfillmentHeadersV2,
    required this.enablePartialCheckout,
    required this.enableItemSwitchableBadge,
    required this.enableInHomeDelivery,
    required this.enableLastCall,
    required this.enableAtcOptimization,
    required this.enablePac,
    required this.enableGxoSignInNudge,
    required this.enableSigninBenefits,
    required this.enableCapOneRewards,
    required this.enableWplusFulfillmentBanner,
    required this.enableGuestCheckout,
    required this.enablePartialSwitchModuleLevel,
    required this.initialSflCount,
    required this.enableAffirm,
    required this.enableItemNotSwitchableBadge,
    required this.enableEbt,
    required this.enableWplus,
    required this.enableSfl,
    required this.enableCxoPrefetch,
    required this.enableItemSwitchableTempBadge,
    required this.enableRegistry,
    required this.enableStoreSnackBarMessage,
    required this.enableShippingIntent,
    required this.enableAuthErrorFix,
    required this.enableItemUpdates,
    required this.enableShopSimilarForPickup,
    required this.enableLeanModeSfl,
    required this.cartQueryStaleTime,
    required this.enableWplusCashback,
    required this.enableSingletonAtf,
    required this.enableForceFooterVisibility,
    required this.enableFullPagePac,
    required this.enableSsrRedirect,
    required this.enableReturnsLabel,
    required this.enableAccOnPac,
    required this.enableSflMoveToCartOptimization,
    required this.enableLeanModeAtc,
    required this.enableDetailedPartialXoLabel,
    required this.enableCartWplusBannerPickup,
    required this.enableWplusThirtyDaystrial,
    required this.showPersonalization,
    required this.enablelastCallOptimizatation,
    required this.enableCartWplusBannerNoSlotSelected,
    required this.enableAddOnServicesPac,
    required this.enableCarePlansAndHomeServices,
    required this.enableFullPageSignin,
    required this.enableSetShippingOrDeliveryMutation,
    required this.enableShippingLabel,
    required this.enableSubstituteOosv2,
    required this.disableP13NOnPac,
    required this.enableEnhancedEmptyCart,
    required this.projectThunderbolt,
    required this.enableLargeImagesMWeb,
    required this.enableNewSignInBenefitCards,
    required this.enableEarlyAccess,
    required this.enablePickupNotAvailable,
    required this.enableLastCallNonRoutine,
    required this.disableGetCartCsr,
    required this.enableWplusBannersPostCartLoadPage,
    required this.enablePostLoadDeals,
    required this.disableNoTimesMessage,
    required this.enableNonConfigBundles,
    required this.slotShortcutMaxSlotReqCount,
    required this.enableFpceHeader,
    required this.slotShortcutGetSlotsQueryCacheTime,
    required this.enableHelium,
    required this.enableFfCollapseMode,
    required this.enableLoadAfterAtf,
    required this.enableIbotta,
    required this.enableCartLevelMsi,
    required this.enableAeBadge,
    required this.enableAtcAnimation,
    required this.enableWplusGuestBanner,
    required this.enableGetCartAuthErrorRefetch,
    required this.enableFcTodayTomorrowHeader,
    required this.enableIntentControl,
    required this.enableWideProductImages,
    required this.enableWeightedItems,
    required this.enableWalmartPlusIntegratedSignUp,
    required this.enableAtcRateLimitingMessage,
    required this.enableFeeThresholdBar,
    required this.enableSubstituteOos,
    required this.enableBenefitSavings,
    required this.enableSmartNudges,
    required this.enableAccScheduling,
    required this.enableMpStoreSelector,
    required this.enableCartLight,
    required this.enableSmileyPricing,
    required this.enableAccVariant,
    required this.enableGroceryPac,
    required this.enableCallouts,
    required this.enableWplusOldBannerUi,
    required this.enablePriceChange,
    required this.enableLastCallFullPage,
    required this.enablePickupNotAvailableVariation2,
    required this.enableSetPickupMutation,
    required this.enableSlotShortcutImplicitIntent,
    required this.enableCrossPollination,
    required this.enableWirelessFreebiePromo,
    required this.enableCartGic,
    required this.enableLastCallPhase2,
    required this.disableCartIconPriceTotal,
    required this.enableExpressUpsell,
    required this.enableLeanMode,
    required this.enableCartWplusBannerTempo,
    required this.disableEstTotalOnMweb,
    required this.enableQueueing,
    required this.enableFfModuleHideUnhideCarrot,
    required this.enableProductTileV2,
    required this.enableEvergreenFee,
    required this.leanModeRetryLimit,
    required this.enableFulfillmentGroupId,
    required this.enableAccSchedulingFindStores,
    required this.enableFpceAosVariant,
    required this.enableOosHotFix,
    required this.enableMiniCart,
    required this.enableFreeAmendAndReturn,
    required this.enableStarRatings,
    required this.enableFreeShippingAndPickup,
    required this.enableSflPerformanceMode,
    required this.enableOnXoMoveOosToSfl,
    required this.enableSsr,
    required this.enableClearMergeCartSfl,
    required this.enableShopSimilar,
    required this.enableSflSmileyPrice,
    required this.enableAtfGiftingUi,
    required this.enableCartBookslotShortcut,
    required this.enablePacCheckout,
    required this.enableCartWplusBannerShippingMoreThanMin,
    required this.enableEnhancedItemUpdates,
    required this.disableCartPartialIntentWarning,
    required this.enableClearMergeCartId,
    required this.enableExpressReservationEndTime,
    required this.hideGuestXocta,
    required this.enableSplashRouteAddition,
    required this.enablePacaosVariants,
    required this.disableItemLevelMsi,
    required this.enableGiftingCheckbox,
    required this.enableWplusRemoveBannersCardCheck,
    required this.enableAccModalOnItemPage,
    required this.enableSignInFromCart,
    required this.enableOosAlertScroll,
    required this.disableGuestPartialXo,
    required this.savingsRecommendationTextV2,
    required this.calculateFooterPositionOnResize,
  });

  bool enableOmniPromise;
  bool enableWirelessPostpaid;
  bool enableCapOne;
  int sflCountPerPagination;
  bool enableFulfillmentHeadersV2;
  bool enablePartialCheckout;
  bool enableItemSwitchableBadge;
  bool enableInHomeDelivery;
  bool enableLastCall;
  bool enableAtcOptimization;
  bool enablePac;
  bool enableGxoSignInNudge;
  bool enableSigninBenefits;
  bool enableCapOneRewards;
  bool enableWplusFulfillmentBanner;
  bool enableGuestCheckout;
  bool enablePartialSwitchModuleLevel;
  int initialSflCount;
  bool enableAffirm;
  bool enableItemNotSwitchableBadge;
  bool enableEbt;
  bool enableWplus;
  bool enableSfl;
  bool enableCxoPrefetch;
  bool enableItemSwitchableTempBadge;
  bool enableRegistry;
  bool enableStoreSnackBarMessage;
  bool enableShippingIntent;
  bool enableAuthErrorFix;
  bool enableItemUpdates;
  bool enableShopSimilarForPickup;
  bool enableLeanModeSfl;
  int cartQueryStaleTime;
  bool enableWplusCashback;
  bool enableSingletonAtf;
  bool enableForceFooterVisibility;
  bool enableFullPagePac;
  bool enableSsrRedirect;
  bool enableReturnsLabel;
  bool enableAccOnPac;
  bool enableSflMoveToCartOptimization;
  bool enableLeanModeAtc;
  bool enableDetailedPartialXoLabel;
  bool enableCartWplusBannerPickup;
  bool enableWplusThirtyDaystrial;
  bool showPersonalization;
  bool enablelastCallOptimizatation;
  bool enableCartWplusBannerNoSlotSelected;
  bool enableAddOnServicesPac;
  bool enableCarePlansAndHomeServices;
  bool enableFullPageSignin;
  bool enableSetShippingOrDeliveryMutation;
  bool enableShippingLabel;
  bool enableSubstituteOosv2;
  bool disableP13NOnPac;
  bool enableEnhancedEmptyCart;
  bool projectThunderbolt;
  bool enableLargeImagesMWeb;
  bool enableNewSignInBenefitCards;
  bool enableEarlyAccess;
  bool enablePickupNotAvailable;
  bool enableLastCallNonRoutine;
  bool disableGetCartCsr;
  bool enableWplusBannersPostCartLoadPage;
  bool enablePostLoadDeals;
  bool disableNoTimesMessage;
  bool enableNonConfigBundles;
  int slotShortcutMaxSlotReqCount;
  bool enableFpceHeader;
  int slotShortcutGetSlotsQueryCacheTime;
  bool enableHelium;
  bool enableFfCollapseMode;
  bool enableLoadAfterAtf;
  bool enableIbotta;
  bool enableCartLevelMsi;
  bool enableAeBadge;
  bool enableAtcAnimation;
  bool enableWplusGuestBanner;
  bool enableGetCartAuthErrorRefetch;
  bool enableFcTodayTomorrowHeader;
  bool enableIntentControl;
  bool enableWideProductImages;
  bool enableWeightedItems;
  bool enableWalmartPlusIntegratedSignUp;
  bool enableAtcRateLimitingMessage;
  bool enableFeeThresholdBar;
  bool enableSubstituteOos;
  bool enableBenefitSavings;
  bool enableSmartNudges;
  bool enableAccScheduling;
  bool enableMpStoreSelector;
  bool enableCartLight;
  bool enableSmileyPricing;
  int enableAccVariant;
  bool enableGroceryPac;
  bool enableCallouts;
  bool enableWplusOldBannerUi;
  bool enablePriceChange;
  bool enableLastCallFullPage;
  bool enablePickupNotAvailableVariation2;
  bool enableSetPickupMutation;
  bool enableSlotShortcutImplicitIntent;
  bool enableCrossPollination;
  bool enableWirelessFreebiePromo;
  bool enableCartGic;
  bool enableLastCallPhase2;
  bool disableCartIconPriceTotal;
  bool enableExpressUpsell;
  bool enableLeanMode;
  bool enableCartWplusBannerTempo;
  bool disableEstTotalOnMweb;
  bool enableQueueing;
  bool enableFfModuleHideUnhideCarrot;
  bool enableProductTileV2;
  bool enableEvergreenFee;
  int leanModeRetryLimit;
  bool enableFulfillmentGroupId;
  bool enableAccSchedulingFindStores;
  int enableFpceAosVariant;
  bool enableOosHotFix;
  bool enableMiniCart;
  bool enableFreeAmendAndReturn;
  bool enableStarRatings;
  bool enableFreeShippingAndPickup;
  bool enableSflPerformanceMode;
  bool enableOnXoMoveOosToSfl;
  bool enableSsr;
  bool enableClearMergeCartSfl;
  bool enableShopSimilar;
  bool enableSflSmileyPrice;
  bool enableAtfGiftingUi;
  bool enableCartBookslotShortcut;
  bool enablePacCheckout;
  bool enableCartWplusBannerShippingMoreThanMin;
  bool enableEnhancedItemUpdates;
  bool disableCartPartialIntentWarning;
  bool enableClearMergeCartId;
  bool enableExpressReservationEndTime;
  bool hideGuestXocta;
  bool enableSplashRouteAddition;
  int enablePacaosVariants;
  bool disableItemLevelMsi;
  bool enableGiftingCheckbox;
  bool enableWplusRemoveBannersCardCheck;
  bool enableAccModalOnItemPage;
  bool enableSignInFromCart;
  bool enableOosAlertScroll;
  bool disableGuestPartialXo;
  bool savingsRecommendationTextV2;
  bool calculateFooterPositionOnResize;

  factory CartAll.fromJson(Map<String, dynamic> json) => CartAll(
        enableOmniPromise: json["enableOmniPromise"],
        enableWirelessPostpaid: json["enableWirelessPostpaid"],
        enableCapOne: json["enableCapOne"],
        sflCountPerPagination: json["sflCountPerPagination"],
        enableFulfillmentHeadersV2: json["enableFulfillmentHeadersV2"],
        enablePartialCheckout: json["enablePartialCheckout"],
        enableItemSwitchableBadge: json["enableItemSwitchableBadge"],
        enableInHomeDelivery: json["enableInHomeDelivery"],
        enableLastCall: json["enableLastCall"],
        enableAtcOptimization: json["enableATCOptimization"],
        enablePac: json["enablePAC"],
        enableGxoSignInNudge: json["enableGXOSignInNudge"],
        enableSigninBenefits: json["enableSigninBenefits"],
        enableCapOneRewards: json["enableCapOneRewards"],
        enableWplusFulfillmentBanner: json["enableWplusFulfillmentBanner"],
        enableGuestCheckout: json["enableGuestCheckout"],
        enablePartialSwitchModuleLevel: json["enablePartialSwitchModuleLevel"],
        initialSflCount: json["initialSFLCount"],
        enableAffirm: json["enableAffirm"],
        enableItemNotSwitchableBadge: json["enableItemNotSwitchableBadge"],
        enableEbt: json["enableEbt"],
        enableWplus: json["enableWplus"],
        enableSfl: json["enableSFL"],
        enableCxoPrefetch: json["enableCXOPrefetch"],
        enableItemSwitchableTempBadge: json["enableItemSwitchableTempBadge"],
        enableRegistry: json["enableRegistry"],
        enableStoreSnackBarMessage: json["enableStoreSnackBarMessage"],
        enableShippingIntent: json["enableShippingIntent"],
        enableAuthErrorFix: json["enableAuthErrorFix"],
        enableItemUpdates: json["enableItemUpdates"],
        enableShopSimilarForPickup: json["enableShopSimilarForPickup"],
        enableLeanModeSfl: json["enableLeanModeSFL"],
        cartQueryStaleTime: json["cartQueryStaleTime"],
        enableWplusCashback: json["enableWplusCashback"],
        enableSingletonAtf: json["enableSingletonATF"],
        enableForceFooterVisibility: json["enableForceFooterVisibility"],
        enableFullPagePac: json["enableFullPagePAC"],
        enableSsrRedirect: json["enableSSRRedirect"],
        enableReturnsLabel: json["enableReturnsLabel"],
        enableAccOnPac: json["enableACCOnPAC"],
        enableSflMoveToCartOptimization:
            json["enableSFLMoveToCartOptimization"],
        enableLeanModeAtc: json["enableLeanModeATC"],
        enableDetailedPartialXoLabel: json["enableDetailedPartialXoLabel"],
        enableCartWplusBannerPickup: json["enableCartWplusBannerPickup"],
        enableWplusThirtyDaystrial: json["enableWplusThirtyDaystrial"],
        showPersonalization: json["showPersonalization"],
        enablelastCallOptimizatation: json["enablelastCallOptimizatation"],
        enableCartWplusBannerNoSlotSelected:
            json["enableCartWplusBannerNoSlotSelected"],
        enableAddOnServicesPac: json["enableAddOnServicesPAC"],
        enableCarePlansAndHomeServices: json["enableCarePlansAndHomeServices"],
        enableFullPageSignin: json["enableFullPageSignin"],
        enableSetShippingOrDeliveryMutation:
            json["enableSetShippingOrDeliveryMutation"],
        enableShippingLabel: json["enableShippingLabel"],
        enableSubstituteOosv2: json["enableSubstituteOOSV2"],
        disableP13NOnPac: json["disableP13nOnPAC"],
        enableEnhancedEmptyCart: json["enableEnhancedEmptyCart"],
        projectThunderbolt: json["projectThunderbolt"],
        enableLargeImagesMWeb: json["enableLargeImagesMWeb"],
        enableNewSignInBenefitCards: json["enableNewSignInBenefitCards"],
        enableEarlyAccess: json["enableEarlyAccess"],
        enablePickupNotAvailable: json["enablePickupNotAvailable"],
        enableLastCallNonRoutine: json["enableLastCallNonRoutine"],
        disableGetCartCsr: json["disableGetCartCSR"],
        enableWplusBannersPostCartLoadPage:
            json["enableWplusBannersPostCartLoadPage"],
        enablePostLoadDeals: json["enablePostLoadDeals"],
        disableNoTimesMessage: json["disableNoTimesMessage"],
        enableNonConfigBundles: json["enableNonConfigBundles"],
        slotShortcutMaxSlotReqCount: json["slotShortcutMaxSlotReqCount"],
        enableFpceHeader: json["enableFPCEHeader"],
        slotShortcutGetSlotsQueryCacheTime:
            json["slotShortcutGetSlotsQueryCacheTime"],
        enableHelium: json["enableHelium"],
        enableFfCollapseMode: json["enableFFCollapseMode"],
        enableLoadAfterAtf: json["enableLoadAfterATF"],
        enableIbotta: json["enableIbotta"],
        enableCartLevelMsi: json["enableCartLevelMSI"],
        enableAeBadge: json["enableAEBadge"],
        enableAtcAnimation: json["enableATCAnimation"],
        enableWplusGuestBanner: json["enableWplusGuestBanner"],
        enableGetCartAuthErrorRefetch: json["enableGetCartAuthErrorRefetch"],
        enableFcTodayTomorrowHeader: json["enableFCTodayTomorrowHeader"],
        enableIntentControl: json["enableIntentControl"],
        enableWideProductImages: json["enableWideProductImages"],
        enableWeightedItems: json["enableWeightedItems"],
        enableWalmartPlusIntegratedSignUp:
            json["enableWalmartPlusIntegratedSignUp"],
        enableAtcRateLimitingMessage: json["enableATCRateLimitingMessage"],
        enableFeeThresholdBar: json["enableFeeThresholdBar"],
        enableSubstituteOos: json["enableSubstituteOOS"],
        enableBenefitSavings: json["enableBenefitSavings"],
        enableSmartNudges: json["enableSmartNudges"],
        enableAccScheduling: json["enableACCScheduling"],
        enableMpStoreSelector: json["enableMPStoreSelector"],
        enableCartLight: json["enableCartLight"],
        enableSmileyPricing: json["enableSmileyPricing"],
        enableAccVariant: json["enableACCVariant"],
        enableGroceryPac: json["enableGroceryPAC"],
        enableCallouts: json["enableCallouts"],
        enableWplusOldBannerUi: json["enableWplusOldBannerUI"],
        enablePriceChange: json["enablePriceChange"],
        enableLastCallFullPage: json["enableLastCallFullPage"],
        enablePickupNotAvailableVariation2:
            json["enablePickupNotAvailableVariation2"],
        enableSetPickupMutation: json["enableSetPickupMutation"],
        enableSlotShortcutImplicitIntent:
            json["enableSlotShortcutImplicitIntent"],
        enableCrossPollination: json["enableCrossPollination"],
        enableWirelessFreebiePromo: json["enableWirelessFreebiePromo"],
        enableCartGic: json["enableCartGIC"],
        enableLastCallPhase2: json["enableLastCallPhase2"],
        disableCartIconPriceTotal: json["disableCartIconPriceTotal"],
        enableExpressUpsell: json["enableExpressUpsell"],
        enableLeanMode: json["enableLeanMode"],
        enableCartWplusBannerTempo: json["enableCartWplusBannerTempo"],
        disableEstTotalOnMweb: json["disableEstTotalOnMweb"],
        enableQueueing: json["enableQueueing"],
        enableFfModuleHideUnhideCarrot: json["enableFFModuleHideUnhideCarrot"],
        enableProductTileV2: json["enableProductTileV2"],
        enableEvergreenFee: json["enableEvergreenFee"],
        leanModeRetryLimit: json["leanModeRetryLimit"],
        enableFulfillmentGroupId: json["enableFulfillmentGroupId"],
        enableAccSchedulingFindStores: json["enableAccSchedulingFindStores"],
        enableFpceAosVariant: json["enableFPCEAosVariant"],
        enableOosHotFix: json["enableOOSHotFix"],
        enableMiniCart: json["enableMiniCart"],
        enableFreeAmendAndReturn: json["enableFreeAmendAndReturn"],
        enableStarRatings: json["enableStarRatings"],
        enableFreeShippingAndPickup: json["enableFreeShippingAndPickup"],
        enableSflPerformanceMode: json["enableSFLPerformanceMode"],
        enableOnXoMoveOosToSfl: json["enableOnXoMoveOosToSfl"],
        enableSsr: json["enableSSR"],
        enableClearMergeCartSfl: json["enableClearMergeCartSFL"],
        enableShopSimilar: json["enableShopSimilar"],
        enableSflSmileyPrice: json["enableSFLSmileyPrice"],
        enableAtfGiftingUi: json["enableATFGiftingUI"],
        enableCartBookslotShortcut: json["enableCartBookslotShortcut"],
        enablePacCheckout: json["enablePACCheckout"],
        enableCartWplusBannerShippingMoreThanMin:
            json["enableCartWplusBannerShippingMoreThanMin"],
        enableEnhancedItemUpdates: json["enableEnhancedItemUpdates"],
        disableCartPartialIntentWarning:
            json["disableCartPartialIntentWarning"],
        enableClearMergeCartId: json["enableClearMergeCartId"],
        enableExpressReservationEndTime:
            json["enableExpressReservationEndTime"],
        hideGuestXocta: json["hideGuestXOCTA"],
        enableSplashRouteAddition: json["enableSplashRouteAddition"],
        enablePacaosVariants: json["enablePACAOSVariants"],
        disableItemLevelMsi: json["disableItemLevelMSI"],
        enableGiftingCheckbox: json["enableGiftingCheckbox"],
        enableWplusRemoveBannersCardCheck:
            json["enableWplusRemoveBannersCardCheck"],
        enableAccModalOnItemPage: json["enableAccModalOnItemPage"],
        enableSignInFromCart: json["enableSignInFromCart"],
        enableOosAlertScroll: json["enableOOSAlertScroll"],
        disableGuestPartialXo: json["disableGuestPartialXO"],
        savingsRecommendationTextV2: json["savingsRecommendationTextV2"],
        calculateFooterPositionOnResize:
            json["calculateFooterPositionOnResize"],
      );

  Map<String, dynamic> toJson() => {
        "enableOmniPromise": enableOmniPromise,
        "enableWirelessPostpaid": enableWirelessPostpaid,
        "enableCapOne": enableCapOne,
        "sflCountPerPagination": sflCountPerPagination,
        "enableFulfillmentHeadersV2": enableFulfillmentHeadersV2,
        "enablePartialCheckout": enablePartialCheckout,
        "enableItemSwitchableBadge": enableItemSwitchableBadge,
        "enableInHomeDelivery": enableInHomeDelivery,
        "enableLastCall": enableLastCall,
        "enableATCOptimization": enableAtcOptimization,
        "enablePAC": enablePac,
        "enableGXOSignInNudge": enableGxoSignInNudge,
        "enableSigninBenefits": enableSigninBenefits,
        "enableCapOneRewards": enableCapOneRewards,
        "enableWplusFulfillmentBanner": enableWplusFulfillmentBanner,
        "enableGuestCheckout": enableGuestCheckout,
        "enablePartialSwitchModuleLevel": enablePartialSwitchModuleLevel,
        "initialSFLCount": initialSflCount,
        "enableAffirm": enableAffirm,
        "enableItemNotSwitchableBadge": enableItemNotSwitchableBadge,
        "enableEbt": enableEbt,
        "enableWplus": enableWplus,
        "enableSFL": enableSfl,
        "enableCXOPrefetch": enableCxoPrefetch,
        "enableItemSwitchableTempBadge": enableItemSwitchableTempBadge,
        "enableRegistry": enableRegistry,
        "enableStoreSnackBarMessage": enableStoreSnackBarMessage,
        "enableShippingIntent": enableShippingIntent,
        "enableAuthErrorFix": enableAuthErrorFix,
        "enableItemUpdates": enableItemUpdates,
        "enableShopSimilarForPickup": enableShopSimilarForPickup,
        "enableLeanModeSFL": enableLeanModeSfl,
        "cartQueryStaleTime": cartQueryStaleTime,
        "enableWplusCashback": enableWplusCashback,
        "enableSingletonATF": enableSingletonAtf,
        "enableForceFooterVisibility": enableForceFooterVisibility,
        "enableFullPagePAC": enableFullPagePac,
        "enableSSRRedirect": enableSsrRedirect,
        "enableReturnsLabel": enableReturnsLabel,
        "enableACCOnPAC": enableAccOnPac,
        "enableSFLMoveToCartOptimization": enableSflMoveToCartOptimization,
        "enableLeanModeATC": enableLeanModeAtc,
        "enableDetailedPartialXoLabel": enableDetailedPartialXoLabel,
        "enableCartWplusBannerPickup": enableCartWplusBannerPickup,
        "enableWplusThirtyDaystrial": enableWplusThirtyDaystrial,
        "showPersonalization": showPersonalization,
        "enablelastCallOptimizatation": enablelastCallOptimizatation,
        "enableCartWplusBannerNoSlotSelected":
            enableCartWplusBannerNoSlotSelected,
        "enableAddOnServicesPAC": enableAddOnServicesPac,
        "enableCarePlansAndHomeServices": enableCarePlansAndHomeServices,
        "enableFullPageSignin": enableFullPageSignin,
        "enableSetShippingOrDeliveryMutation":
            enableSetShippingOrDeliveryMutation,
        "enableShippingLabel": enableShippingLabel,
        "enableSubstituteOOSV2": enableSubstituteOosv2,
        "disableP13nOnPAC": disableP13NOnPac,
        "enableEnhancedEmptyCart": enableEnhancedEmptyCart,
        "projectThunderbolt": projectThunderbolt,
        "enableLargeImagesMWeb": enableLargeImagesMWeb,
        "enableNewSignInBenefitCards": enableNewSignInBenefitCards,
        "enableEarlyAccess": enableEarlyAccess,
        "enablePickupNotAvailable": enablePickupNotAvailable,
        "enableLastCallNonRoutine": enableLastCallNonRoutine,
        "disableGetCartCSR": disableGetCartCsr,
        "enableWplusBannersPostCartLoadPage":
            enableWplusBannersPostCartLoadPage,
        "enablePostLoadDeals": enablePostLoadDeals,
        "disableNoTimesMessage": disableNoTimesMessage,
        "enableNonConfigBundles": enableNonConfigBundles,
        "slotShortcutMaxSlotReqCount": slotShortcutMaxSlotReqCount,
        "enableFPCEHeader": enableFpceHeader,
        "slotShortcutGetSlotsQueryCacheTime":
            slotShortcutGetSlotsQueryCacheTime,
        "enableHelium": enableHelium,
        "enableFFCollapseMode": enableFfCollapseMode,
        "enableLoadAfterATF": enableLoadAfterAtf,
        "enableIbotta": enableIbotta,
        "enableCartLevelMSI": enableCartLevelMsi,
        "enableAEBadge": enableAeBadge,
        "enableATCAnimation": enableAtcAnimation,
        "enableWplusGuestBanner": enableWplusGuestBanner,
        "enableGetCartAuthErrorRefetch": enableGetCartAuthErrorRefetch,
        "enableFCTodayTomorrowHeader": enableFcTodayTomorrowHeader,
        "enableIntentControl": enableIntentControl,
        "enableWideProductImages": enableWideProductImages,
        "enableWeightedItems": enableWeightedItems,
        "enableWalmartPlusIntegratedSignUp": enableWalmartPlusIntegratedSignUp,
        "enableATCRateLimitingMessage": enableAtcRateLimitingMessage,
        "enableFeeThresholdBar": enableFeeThresholdBar,
        "enableSubstituteOOS": enableSubstituteOos,
        "enableBenefitSavings": enableBenefitSavings,
        "enableSmartNudges": enableSmartNudges,
        "enableACCScheduling": enableAccScheduling,
        "enableMPStoreSelector": enableMpStoreSelector,
        "enableCartLight": enableCartLight,
        "enableSmileyPricing": enableSmileyPricing,
        "enableACCVariant": enableAccVariant,
        "enableGroceryPAC": enableGroceryPac,
        "enableCallouts": enableCallouts,
        "enableWplusOldBannerUI": enableWplusOldBannerUi,
        "enablePriceChange": enablePriceChange,
        "enableLastCallFullPage": enableLastCallFullPage,
        "enablePickupNotAvailableVariation2":
            enablePickupNotAvailableVariation2,
        "enableSetPickupMutation": enableSetPickupMutation,
        "enableSlotShortcutImplicitIntent": enableSlotShortcutImplicitIntent,
        "enableCrossPollination": enableCrossPollination,
        "enableWirelessFreebiePromo": enableWirelessFreebiePromo,
        "enableCartGIC": enableCartGic,
        "enableLastCallPhase2": enableLastCallPhase2,
        "disableCartIconPriceTotal": disableCartIconPriceTotal,
        "enableExpressUpsell": enableExpressUpsell,
        "enableLeanMode": enableLeanMode,
        "enableCartWplusBannerTempo": enableCartWplusBannerTempo,
        "disableEstTotalOnMweb": disableEstTotalOnMweb,
        "enableQueueing": enableQueueing,
        "enableFFModuleHideUnhideCarrot": enableFfModuleHideUnhideCarrot,
        "enableProductTileV2": enableProductTileV2,
        "enableEvergreenFee": enableEvergreenFee,
        "leanModeRetryLimit": leanModeRetryLimit,
        "enableFulfillmentGroupId": enableFulfillmentGroupId,
        "enableAccSchedulingFindStores": enableAccSchedulingFindStores,
        "enableFPCEAosVariant": enableFpceAosVariant,
        "enableOOSHotFix": enableOosHotFix,
        "enableMiniCart": enableMiniCart,
        "enableFreeAmendAndReturn": enableFreeAmendAndReturn,
        "enableStarRatings": enableStarRatings,
        "enableFreeShippingAndPickup": enableFreeShippingAndPickup,
        "enableSFLPerformanceMode": enableSflPerformanceMode,
        "enableOnXoMoveOosToSfl": enableOnXoMoveOosToSfl,
        "enableSSR": enableSsr,
        "enableClearMergeCartSFL": enableClearMergeCartSfl,
        "enableShopSimilar": enableShopSimilar,
        "enableSFLSmileyPrice": enableSflSmileyPrice,
        "enableATFGiftingUI": enableAtfGiftingUi,
        "enableCartBookslotShortcut": enableCartBookslotShortcut,
        "enablePACCheckout": enablePacCheckout,
        "enableCartWplusBannerShippingMoreThanMin":
            enableCartWplusBannerShippingMoreThanMin,
        "enableEnhancedItemUpdates": enableEnhancedItemUpdates,
        "disableCartPartialIntentWarning": disableCartPartialIntentWarning,
        "enableClearMergeCartId": enableClearMergeCartId,
        "enableExpressReservationEndTime": enableExpressReservationEndTime,
        "hideGuestXOCTA": hideGuestXocta,
        "enableSplashRouteAddition": enableSplashRouteAddition,
        "enablePACAOSVariants": enablePacaosVariants,
        "disableItemLevelMSI": disableItemLevelMsi,
        "enableGiftingCheckbox": enableGiftingCheckbox,
        "enableWplusRemoveBannersCardCheck": enableWplusRemoveBannersCardCheck,
        "enableAccModalOnItemPage": enableAccModalOnItemPage,
        "enableSignInFromCart": enableSignInFromCart,
        "enableOOSAlertScroll": enableOosAlertScroll,
        "disableGuestPartialXO": disableGuestPartialXo,
        "savingsRecommendationTextV2": savingsRecommendationTextV2,
        "calculateFooterPositionOnResize": calculateFooterPositionOnResize,
      };
}

class CvFooter {
  CvFooter({
    required this.all,
  });

  FooterAll all;

  factory CvFooter.fromJson(Map<String, dynamic> json) => CvFooter(
        all: FooterAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class FooterAll {
  FooterAll({
    required this.enableXoFeedback,
    required this.hideGiveFeedbackSection,
    required this.feedbackFetchMigrationToPlatformFetch,
    required this.enableNativeAppDownloadBottomsheet,
    required this.enableEmailSignup,
    required this.timeIntervalInHoursNativeAppInstallPrompt,
    required this.enableNativeAppDownloadStickyBanner,
    required this.enableInStoreWifiAppPrompt,
    required this.enablePrivacyLinkUpdate,
    required this.maxNumberOfNativeAppInstallPrompt,
    required this.enableForceB2BLogout,
    required this.isFullFooterEnabled,
  });

  bool enableXoFeedback;
  bool hideGiveFeedbackSection;
  bool feedbackFetchMigrationToPlatformFetch;
  bool enableNativeAppDownloadBottomsheet;
  bool enableEmailSignup;
  int timeIntervalInHoursNativeAppInstallPrompt;
  bool enableNativeAppDownloadStickyBanner;
  bool enableInStoreWifiAppPrompt;
  bool enablePrivacyLinkUpdate;
  int maxNumberOfNativeAppInstallPrompt;
  bool enableForceB2BLogout;
  bool isFullFooterEnabled;

  factory FooterAll.fromJson(Map<String, dynamic> json) => FooterAll(
        enableXoFeedback: json["enableXOFeedback"],
        hideGiveFeedbackSection: json["hideGiveFeedbackSection"],
        feedbackFetchMigrationToPlatformFetch:
            json["feedbackFetchMigrationToPlatformFetch"],
        enableNativeAppDownloadBottomsheet:
            json["enableNativeAppDownloadBottomsheet"],
        enableEmailSignup: json["enableEmailSignup"],
        timeIntervalInHoursNativeAppInstallPrompt:
            json["timeIntervalInHoursNativeAppInstallPrompt"],
        enableNativeAppDownloadStickyBanner:
            json["enableNativeAppDownloadStickyBanner"],
        enableInStoreWifiAppPrompt: json["enableInStoreWifiAppPrompt"],
        enablePrivacyLinkUpdate: json["enablePrivacyLinkUpdate"],
        maxNumberOfNativeAppInstallPrompt:
            json["maxNumberOfNativeAppInstallPrompt"],
        enableForceB2BLogout: json["enableForceB2BLogout"],
        isFullFooterEnabled: json["isFullFooterEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "enableXOFeedback": enableXoFeedback,
        "hideGiveFeedbackSection": hideGiveFeedbackSection,
        "feedbackFetchMigrationToPlatformFetch":
            feedbackFetchMigrationToPlatformFetch,
        "enableNativeAppDownloadBottomsheet":
            enableNativeAppDownloadBottomsheet,
        "enableEmailSignup": enableEmailSignup,
        "timeIntervalInHoursNativeAppInstallPrompt":
            timeIntervalInHoursNativeAppInstallPrompt,
        "enableNativeAppDownloadStickyBanner":
            enableNativeAppDownloadStickyBanner,
        "enableInStoreWifiAppPrompt": enableInStoreWifiAppPrompt,
        "enablePrivacyLinkUpdate": enablePrivacyLinkUpdate,
        "maxNumberOfNativeAppInstallPrompt": maxNumberOfNativeAppInstallPrompt,
        "enableForceB2BLogout": enableForceB2BLogout,
        "isFullFooterEnabled": isFullFooterEnabled,
      };
}

class CvHeader {
  CvHeader({
    required this.all,
  });

  HeaderAll all;

  factory CvHeader.fromJson(Map<String, dynamic> json) => CvHeader(
        all: HeaderAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class HeaderAll {
  HeaderAll({
    required this.isAlertBarEnabled,
    required this.showOptOut,
    required this.showAddressLineOne,
    required this.enabledGicRetentionPrompt,
    required this.hideServiceWidget,
    required this.showNavLinks,
    required this.enableL0SeoLinksForAllPage,
    required this.heartingEnhancementsEnable,
    required this.enableTaDropdown,
    required this.fetchLocation,
    required this.enableGic,
    required this.calloutViewsPerIdPerBstc,
    required this.maxCalloutsPerBstc,
    required this.flyOutExpandOnClick,
    required this.enableWplusLogoOnSiteHeader,
    required this.enableNavClickability,
    required this.navLinks,
    required this.fetchLocationCsrOnLoad,
    required this.enableGoogleEnhancedPlaceActions,
    required this.enableGicAutoShowOnSessionStart,
    required this.enableResponsiveHf,
    required this.calloutViewsPerIdPerVtc,
    required this.enableDeliveryStoreSelection,
    required this.calloutsEnabled,
    required this.enableL0SeoLinksForItemPage,
    required this.enableStickyGic,
  });

  bool isAlertBarEnabled;
  bool showOptOut;
  bool showAddressLineOne;
  bool enabledGicRetentionPrompt;
  bool hideServiceWidget;
  bool showNavLinks;
  bool enableL0SeoLinksForAllPage;
  bool heartingEnhancementsEnable;
  bool enableTaDropdown;
  bool fetchLocation;
  bool enableGic;
  int calloutViewsPerIdPerBstc;
  int maxCalloutsPerBstc;
  bool flyOutExpandOnClick;
  bool enableWplusLogoOnSiteHeader;
  bool enableNavClickability;
  String navLinks;
  bool fetchLocationCsrOnLoad;
  bool enableGoogleEnhancedPlaceActions;
  bool enableGicAutoShowOnSessionStart;
  bool enableResponsiveHf;
  int calloutViewsPerIdPerVtc;
  bool enableDeliveryStoreSelection;
  bool calloutsEnabled;
  bool enableL0SeoLinksForItemPage;
  bool enableStickyGic;

  factory HeaderAll.fromJson(Map<String, dynamic> json) => HeaderAll(
        isAlertBarEnabled: json["isAlertBarEnabled"],
        showOptOut: json["showOptOut"],
        showAddressLineOne: json["showAddressLineOne"],
        enabledGicRetentionPrompt: json["enabledGICRetentionPrompt"],
        hideServiceWidget: json["hideServiceWidget"],
        showNavLinks: json["showNavLinks"],
        enableL0SeoLinksForAllPage: json["enableL0SeoLinksForAllPage"],
        heartingEnhancementsEnable: json["heartingEnhancementsEnable"],
        enableTaDropdown: json["enableTADropdown"],
        fetchLocation: json["fetchLocation"],
        enableGic: json["enableGIC"],
        calloutViewsPerIdPerBstc: json["calloutViewsPerIdPerBSTC"],
        maxCalloutsPerBstc: json["maxCalloutsPerBSTC"],
        flyOutExpandOnClick: json["flyOutExpandOnClick"],
        enableWplusLogoOnSiteHeader: json["enableWplusLogoOnSiteHeader"],
        enableNavClickability: json["enableNavClickability"],
        navLinks: json["navLinks"],
        fetchLocationCsrOnLoad: json["fetchLocationCSROnLoad"],
        enableGoogleEnhancedPlaceActions:
            json["enableGoogleEnhancedPlaceActions"],
        enableGicAutoShowOnSessionStart:
            json["enableGICAutoShowOnSessionStart"],
        enableResponsiveHf: json["enableResponsiveHF"],
        calloutViewsPerIdPerVtc: json["calloutViewsPerIdPerVTC"],
        enableDeliveryStoreSelection: json["enableDeliveryStoreSelection"],
        calloutsEnabled: json["calloutsEnabled"],
        enableL0SeoLinksForItemPage: json["enableL0SeoLinksForItemPage"],
        enableStickyGic: json["enableStickyGIC"],
      );

  Map<String, dynamic> toJson() => {
        "isAlertBarEnabled": isAlertBarEnabled,
        "showOptOut": showOptOut,
        "showAddressLineOne": showAddressLineOne,
        "enabledGICRetentionPrompt": enabledGicRetentionPrompt,
        "hideServiceWidget": hideServiceWidget,
        "showNavLinks": showNavLinks,
        "enableL0SeoLinksForAllPage": enableL0SeoLinksForAllPage,
        "heartingEnhancementsEnable": heartingEnhancementsEnable,
        "enableTADropdown": enableTaDropdown,
        "fetchLocation": fetchLocation,
        "enableGIC": enableGic,
        "calloutViewsPerIdPerBSTC": calloutViewsPerIdPerBstc,
        "maxCalloutsPerBSTC": maxCalloutsPerBstc,
        "flyOutExpandOnClick": flyOutExpandOnClick,
        "enableWplusLogoOnSiteHeader": enableWplusLogoOnSiteHeader,
        "enableNavClickability": enableNavClickability,
        "navLinks": navLinks,
        "fetchLocationCSROnLoad": fetchLocationCsrOnLoad,
        "enableGoogleEnhancedPlaceActions": enableGoogleEnhancedPlaceActions,
        "enableGICAutoShowOnSessionStart": enableGicAutoShowOnSessionStart,
        "enableResponsiveHF": enableResponsiveHf,
        "calloutViewsPerIdPerVTC": calloutViewsPerIdPerVtc,
        "enableDeliveryStoreSelection": enableDeliveryStoreSelection,
        "calloutsEnabled": calloutsEnabled,
        "enableL0SeoLinksForItemPage": enableL0SeoLinksForItemPage,
        "enableStickyGIC": enableStickyGic,
      };
}

class Pulse {
  Pulse({
    required this.all,
  });

  PulseAll all;

  factory Pulse.fromJson(Map<String, dynamic> json) => Pulse(
        all: PulseAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class PulseAll {
  PulseAll({
    required this.enableV1Schema,
    required this.enableQuantumMetric,
    required this.alwaysAllowedTagList,
    required this.logLevel,
  });

  bool enableV1Schema;
  bool enableQuantumMetric;
  String alwaysAllowedTagList;
  String logLevel;

  factory PulseAll.fromJson(Map<String, dynamic> json) => PulseAll(
        enableV1Schema: json["enableV1Schema"],
        enableQuantumMetric: json["enableQuantumMetric"],
        alwaysAllowedTagList: json["alwaysAllowedTagList"],
        logLevel: json["logLevel"],
      );

  Map<String, dynamic> toJson() => {
        "enableV1Schema": enableV1Schema,
        "enableQuantumMetric": enableQuantumMetric,
        "alwaysAllowedTagList": alwaysAllowedTagList,
        "logLevel": logLevel,
      };
}

class Search {
  Search({
    required this.all,
  });

  SearchAll all;

  factory Search.fromJson(Map<String, dynamic> json) => Search(
        all: SearchAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class SearchAll {
  SearchAll({
    required this.enableExternalInfoUrl,
    required this.enableNewStackedRecallNoResult,
    required this.fetchItemsV2Enable,
    required this.threeColumnGrid,
    required this.atfDwebGridCount,
    required this.enableAccInstallation,
    required this.enableFashionTopNav,
    required this.enableFlattenedFitment,
    required this.enableFulfillmentBadge,
    required this.enableTopNavItemStack,
    required this.enableFacetCount,
    required this.fitmentTopicPageEnable,
    required this.enableGrapqlQueryParams,
    required this.enableStylesheetsForInlineStyles,
    required this.fetchTimeoutMs,
    required this.bookSlotPersistentFilterEnable,
    required this.mwebGridProductCount,
    required this.enableRemoveEmptyProductFlagRows,
    required this.secondaryQuerySwitch,
    required this.enableViewportThreshold,
    required this.enableRelatedSearches,
    required this.enableItemStackLazyLoading,
    required this.enableSearchSkinnyBanner,
    required this.enableInvalidateGicQuery,
    required this.enablePortableFacets,
    required this.viewportThresholdDesktop,
    required this.enableVariantsPagination,
    required this.displayMobileAtcJustified,
    required this.displayMobileAtcLeftAligned,
    required this.enablePaginationIo,
    required this.showArExperienceBadging,
    required this.lazyLoadMs,
    required this.enableSearchPageSsr,
    required this.smileVariation,
    required this.enableOlImageSize,
    required this.fitmentModulesEnable,
    required this.pricingDisclaimerText,
    required this.skipGicIntent,
    required this.mwebListProductCount,
    required this.enableStickyDisclaimerBar,
    required this.enableLhnFilterUpdateGqlCall,
    required this.enableAosPanel,
    required this.postProcessedQueryEnable,
    required this.seoModulesEnable,
    required this.enableTopNavUpdateGqlCall,
    required this.enableMaxWidth,
    required this.enableIntersectedSearchResults,
    required this.enableFidLogging,
    required this.topResultSubHeader,
    required this.enableSubscriptionFeature,
    required this.subscriptionHeaderImage,
    required this.topResultHeader,
    required this.enableValuePricing,
    required this.enableColorSwatch,
    required this.enableScrollBasedLazyLoading,
    required this.enableAspectRecommendation,
    required this.enableSpecificLazyFeature,
    required this.enableFacetExpansion,
    required this.viewportThresholdMobile,
    required this.enableFulfillmentMethodDemo,
    required this.interesectedResultsBottomMargin,
    required this.enableRemovePadding,
    required this.enableRelatedSearchHorizontalPills,
    required this.enablePac,
    required this.enableNUps,
    required this.enableAos,
    required this.enableVisionCenterBadgeSearch,
    required this.removeLhnDuplicates,
    required this.enableSingleItemTopResult,
    required this.listViewEnum,
    required this.dwebGridProductCount,
    required this.enableLeftHandNav,
    required this.atfMwebListCount,
    required this.enablePricingDisclaimer,
    required this.enableVariantDynamicText,
    required this.enableGic,
    required this.topicPageSortBy,
    required this.enableLcpSingleImagePrefetch,
    required this.enableLcpHighFetchPriority,
    required this.enableVariantItemSmile,
    required this.displayMobileAtcRightAligned,
    required this.bannerModulesEnable,
    required this.enableLhnCategoryTree,
    required this.lcpImageQuality,
    required this.searchPersistentFilterEnable,
    required this.enableLcpSingleImagePrefetchScaleFallback,
    required this.clientFetchTimeoutMs,
    required this.enableSearchSsrParallelQueries,
    required this.enableSimilarItems,
    required this.searchPageBuyNowType,
    required this.imageSizeEnum,
    required this.enableSecondaryStackType,
    required this.partialRenderEnable,
    required this.tileTakeOver,
    required this.enableRemoveEmptyProductVariantRows,
  });

  bool enableExternalInfoUrl;
  bool enableNewStackedRecallNoResult;
  bool fetchItemsV2Enable;
  bool threeColumnGrid;
  int atfDwebGridCount;
  bool enableAccInstallation;
  bool enableFashionTopNav;
  bool enableFlattenedFitment;
  bool enableFulfillmentBadge;
  bool enableTopNavItemStack;
  bool enableFacetCount;
  bool fitmentTopicPageEnable;
  bool enableGrapqlQueryParams;
  bool enableStylesheetsForInlineStyles;
  int fetchTimeoutMs;
  bool bookSlotPersistentFilterEnable;
  int mwebGridProductCount;
  bool enableRemoveEmptyProductFlagRows;
  bool secondaryQuerySwitch;
  bool enableViewportThreshold;
  bool enableRelatedSearches;
  bool enableItemStackLazyLoading;
  bool enableSearchSkinnyBanner;
  bool enableInvalidateGicQuery;
  bool enablePortableFacets;
  double viewportThresholdDesktop;
  bool enableVariantsPagination;
  bool displayMobileAtcJustified;
  bool displayMobileAtcLeftAligned;
  bool enablePaginationIo;
  bool showArExperienceBadging;
  int lazyLoadMs;
  bool enableSearchPageSsr;
  int smileVariation;
  bool enableOlImageSize;
  bool fitmentModulesEnable;
  String pricingDisclaimerText;
  bool skipGicIntent;
  int mwebListProductCount;
  bool enableStickyDisclaimerBar;
  bool enableLhnFilterUpdateGqlCall;
  bool enableAosPanel;
  bool postProcessedQueryEnable;
  bool seoModulesEnable;
  bool enableTopNavUpdateGqlCall;
  bool enableMaxWidth;
  bool enableIntersectedSearchResults;
  bool enableFidLogging;
  String topResultSubHeader;
  bool enableSubscriptionFeature;
  String subscriptionHeaderImage;
  String topResultHeader;
  bool enableValuePricing;
  bool enableColorSwatch;
  bool enableScrollBasedLazyLoading;
  bool enableAspectRecommendation;
  String enableSpecificLazyFeature;
  bool enableFacetExpansion;
  double viewportThresholdMobile;
  bool enableFulfillmentMethodDemo;
  double interesectedResultsBottomMargin;
  bool enableRemovePadding;
  bool enableRelatedSearchHorizontalPills;
  bool enablePac;
  bool enableNUps;
  bool enableAos;
  bool enableVisionCenterBadgeSearch;
  bool removeLhnDuplicates;
  bool enableSingleItemTopResult;
  int listViewEnum;
  int dwebGridProductCount;
  bool enableLeftHandNav;
  int atfMwebListCount;
  bool enablePricingDisclaimer;
  bool enableVariantDynamicText;
  bool enableGic;
  String topicPageSortBy;
  bool enableLcpSingleImagePrefetch;
  bool enableLcpHighFetchPriority;
  bool enableVariantItemSmile;
  bool displayMobileAtcRightAligned;
  bool bannerModulesEnable;
  bool enableLhnCategoryTree;
  String lcpImageQuality;
  bool searchPersistentFilterEnable;
  bool enableLcpSingleImagePrefetchScaleFallback;
  int clientFetchTimeoutMs;
  bool enableSearchSsrParallelQueries;
  bool enableSimilarItems;
  int searchPageBuyNowType;
  int imageSizeEnum;
  int enableSecondaryStackType;
  bool partialRenderEnable;
  bool tileTakeOver;
  bool enableRemoveEmptyProductVariantRows;

  factory SearchAll.fromJson(Map<String, dynamic> json) => SearchAll(
        enableExternalInfoUrl: json["enableExternalInfoUrl"],
        enableNewStackedRecallNoResult: json["enableNewStackedRecallNoResult"],
        fetchItemsV2Enable: json["fetchItemsV2Enable"],
        threeColumnGrid: json["threeColumnGrid"],
        atfDwebGridCount: json["atfDwebGridCount"],
        enableAccInstallation: json["enableAccInstallation"],
        enableFashionTopNav: json["enableFashionTopNav"],
        enableFlattenedFitment: json["enableFlattenedFitment"],
        enableFulfillmentBadge: json["enableFulfillmentBadge"],
        enableTopNavItemStack: json["enableTopNavItemStack"],
        enableFacetCount: json["enableFacetCount"],
        fitmentTopicPageEnable: json["fitmentTopicPageEnable"],
        enableGrapqlQueryParams: json["enableGrapqlQueryParams"],
        enableStylesheetsForInlineStyles:
            json["enableStylesheetsForInlineStyles"],
        fetchTimeoutMs: json["fetchTimeoutMs"],
        bookSlotPersistentFilterEnable: json["bookSlotPersistentFilterEnable"],
        mwebGridProductCount: json["mwebGridProductCount"],
        enableRemoveEmptyProductFlagRows:
            json["enableRemoveEmptyProductFlagRows"],
        secondaryQuerySwitch: json["secondaryQuerySwitch"],
        enableViewportThreshold: json["enableViewportThreshold"],
        enableRelatedSearches: json["enableRelatedSearches"],
        enableItemStackLazyLoading: json["enableItemStackLazyLoading"],
        enableSearchSkinnyBanner: json["enableSearchSkinnyBanner"],
        enableInvalidateGicQuery: json["enableInvalidateGICQuery"],
        enablePortableFacets: json["enablePortableFacets"],
        viewportThresholdDesktop: json["viewportThresholdDesktop"]?.toDouble(),
        enableVariantsPagination: json["enableVariantsPagination"],
        displayMobileAtcJustified: json["displayMobileATCJustified"],
        displayMobileAtcLeftAligned: json["displayMobileATCLeftAligned"],
        enablePaginationIo: json["enablePaginationIO"],
        showArExperienceBadging: json["showARExperienceBadging"],
        lazyLoadMs: json["lazyLoadMS"],
        enableSearchPageSsr: json["enableSearchPageSSR"],
        smileVariation: json["smileVariation"],
        enableOlImageSize: json["enableOLImageSize"],
        fitmentModulesEnable: json["fitmentModulesEnable"],
        pricingDisclaimerText: json["pricingDisclaimerText"],
        skipGicIntent: json["skipGICIntent"],
        mwebListProductCount: json["mwebListProductCount"],
        enableStickyDisclaimerBar: json["enableStickyDisclaimerBar"],
        enableLhnFilterUpdateGqlCall: json["enableLHNFilterUpdateGQLCall"],
        enableAosPanel: json["enableAOSPanel"],
        postProcessedQueryEnable: json["postProcessedQueryEnable"],
        seoModulesEnable: json["seoModulesEnable"],
        enableTopNavUpdateGqlCall: json["enableTopNavUpdateGQLCall"],
        enableMaxWidth: json["enableMaxWidth"],
        enableIntersectedSearchResults: json["enableIntersectedSearchResults"],
        enableFidLogging: json["enableFIDLogging"],
        topResultSubHeader: json["topResultSubHeader"],
        enableSubscriptionFeature: json["enableSubscriptionFeature"],
        subscriptionHeaderImage: json["subscriptionHeaderImage"],
        topResultHeader: json["topResultHeader"],
        enableValuePricing: json["enableValuePricing"],
        enableColorSwatch: json["enableColorSwatch"],
        enableScrollBasedLazyLoading: json["enableScrollBasedLazyLoading"],
        enableAspectRecommendation: json["enableAspectRecommendation"],
        enableSpecificLazyFeature: json["enableSpecificLazyFeature"],
        enableFacetExpansion: json["enableFacetExpansion"],
        viewportThresholdMobile: json["viewportThresholdMobile"]?.toDouble(),
        enableFulfillmentMethodDemo: json["enableFulfillmentMethodDemo"],
        interesectedResultsBottomMargin:
            json["interesectedResultsBottomMargin"]?.toDouble(),
        enableRemovePadding: json["enableRemovePadding"],
        enableRelatedSearchHorizontalPills:
            json["enableRelatedSearchHorizontalPills"],
        enablePac: json["enablePAC"],
        enableNUps: json["enableNUps"],
        enableAos: json["enableAOS"],
        enableVisionCenterBadgeSearch: json["enableVisionCenterBadgeSearch"],
        removeLhnDuplicates: json["removeLHNDuplicates"],
        enableSingleItemTopResult: json["enableSingleItemTopResult"],
        listViewEnum: json["listViewEnum"],
        dwebGridProductCount: json["dwebGridProductCount"],
        enableLeftHandNav: json["enableLeftHandNav"],
        atfMwebListCount: json["atfMwebListCount"],
        enablePricingDisclaimer: json["enablePricingDisclaimer"],
        enableVariantDynamicText: json["enableVariantDynamicText"],
        enableGic: json["enableGIC"],
        topicPageSortBy: json["topicPageSortBy"],
        enableLcpSingleImagePrefetch: json["enableLCPSingleImagePrefetch"],
        enableLcpHighFetchPriority: json["enableLCPHighFetchPriority"],
        enableVariantItemSmile: json["enableVariantItemSmile"],
        displayMobileAtcRightAligned: json["displayMobileATCRightAligned"],
        bannerModulesEnable: json["bannerModulesEnable"],
        enableLhnCategoryTree: json["enableLHNCategoryTree"],
        lcpImageQuality: json["lcpImageQuality"],
        searchPersistentFilterEnable: json["searchPersistentFilterEnable"],
        enableLcpSingleImagePrefetchScaleFallback:
            json["enableLCPSingleImagePrefetchScaleFallback"],
        clientFetchTimeoutMs: json["clientFetchTimeoutMs"],
        enableSearchSsrParallelQueries: json["enableSearchSSRParallelQueries"],
        enableSimilarItems: json["enableSimilarItems"],
        searchPageBuyNowType: json["searchPageBuyNowType"],
        imageSizeEnum: json["imageSizeEnum"],
        enableSecondaryStackType: json["enableSecondaryStackType"],
        partialRenderEnable: json["partialRenderEnable"],
        tileTakeOver: json["tileTakeOver"],
        enableRemoveEmptyProductVariantRows:
            json["enableRemoveEmptyProductVariantRows"],
      );

  Map<String, dynamic> toJson() => {
        "enableExternalInfoUrl": enableExternalInfoUrl,
        "enableNewStackedRecallNoResult": enableNewStackedRecallNoResult,
        "fetchItemsV2Enable": fetchItemsV2Enable,
        "threeColumnGrid": threeColumnGrid,
        "atfDwebGridCount": atfDwebGridCount,
        "enableAccInstallation": enableAccInstallation,
        "enableFashionTopNav": enableFashionTopNav,
        "enableFlattenedFitment": enableFlattenedFitment,
        "enableFulfillmentBadge": enableFulfillmentBadge,
        "enableTopNavItemStack": enableTopNavItemStack,
        "enableFacetCount": enableFacetCount,
        "fitmentTopicPageEnable": fitmentTopicPageEnable,
        "enableGrapqlQueryParams": enableGrapqlQueryParams,
        "enableStylesheetsForInlineStyles": enableStylesheetsForInlineStyles,
        "fetchTimeoutMs": fetchTimeoutMs,
        "bookSlotPersistentFilterEnable": bookSlotPersistentFilterEnable,
        "mwebGridProductCount": mwebGridProductCount,
        "enableRemoveEmptyProductFlagRows": enableRemoveEmptyProductFlagRows,
        "secondaryQuerySwitch": secondaryQuerySwitch,
        "enableViewportThreshold": enableViewportThreshold,
        "enableRelatedSearches": enableRelatedSearches,
        "enableItemStackLazyLoading": enableItemStackLazyLoading,
        "enableSearchSkinnyBanner": enableSearchSkinnyBanner,
        "enableInvalidateGICQuery": enableInvalidateGicQuery,
        "enablePortableFacets": enablePortableFacets,
        "viewportThresholdDesktop": viewportThresholdDesktop,
        "enableVariantsPagination": enableVariantsPagination,
        "displayMobileATCJustified": displayMobileAtcJustified,
        "displayMobileATCLeftAligned": displayMobileAtcLeftAligned,
        "enablePaginationIO": enablePaginationIo,
        "showARExperienceBadging": showArExperienceBadging,
        "lazyLoadMS": lazyLoadMs,
        "enableSearchPageSSR": enableSearchPageSsr,
        "smileVariation": smileVariation,
        "enableOLImageSize": enableOlImageSize,
        "fitmentModulesEnable": fitmentModulesEnable,
        "pricingDisclaimerText": pricingDisclaimerText,
        "skipGICIntent": skipGicIntent,
        "mwebListProductCount": mwebListProductCount,
        "enableStickyDisclaimerBar": enableStickyDisclaimerBar,
        "enableLHNFilterUpdateGQLCall": enableLhnFilterUpdateGqlCall,
        "enableAOSPanel": enableAosPanel,
        "postProcessedQueryEnable": postProcessedQueryEnable,
        "seoModulesEnable": seoModulesEnable,
        "enableTopNavUpdateGQLCall": enableTopNavUpdateGqlCall,
        "enableMaxWidth": enableMaxWidth,
        "enableIntersectedSearchResults": enableIntersectedSearchResults,
        "enableFIDLogging": enableFidLogging,
        "topResultSubHeader": topResultSubHeader,
        "enableSubscriptionFeature": enableSubscriptionFeature,
        "subscriptionHeaderImage": subscriptionHeaderImage,
        "topResultHeader": topResultHeader,
        "enableValuePricing": enableValuePricing,
        "enableColorSwatch": enableColorSwatch,
        "enableScrollBasedLazyLoading": enableScrollBasedLazyLoading,
        "enableAspectRecommendation": enableAspectRecommendation,
        "enableSpecificLazyFeature": enableSpecificLazyFeature,
        "enableFacetExpansion": enableFacetExpansion,
        "viewportThresholdMobile": viewportThresholdMobile,
        "enableFulfillmentMethodDemo": enableFulfillmentMethodDemo,
        "interesectedResultsBottomMargin": interesectedResultsBottomMargin,
        "enableRemovePadding": enableRemovePadding,
        "enableRelatedSearchHorizontalPills":
            enableRelatedSearchHorizontalPills,
        "enablePAC": enablePac,
        "enableNUps": enableNUps,
        "enableAOS": enableAos,
        "enableVisionCenterBadgeSearch": enableVisionCenterBadgeSearch,
        "removeLHNDuplicates": removeLhnDuplicates,
        "enableSingleItemTopResult": enableSingleItemTopResult,
        "listViewEnum": listViewEnum,
        "dwebGridProductCount": dwebGridProductCount,
        "enableLeftHandNav": enableLeftHandNav,
        "atfMwebListCount": atfMwebListCount,
        "enablePricingDisclaimer": enablePricingDisclaimer,
        "enableVariantDynamicText": enableVariantDynamicText,
        "enableGIC": enableGic,
        "topicPageSortBy": topicPageSortBy,
        "enableLCPSingleImagePrefetch": enableLcpSingleImagePrefetch,
        "enableLCPHighFetchPriority": enableLcpHighFetchPriority,
        "enableVariantItemSmile": enableVariantItemSmile,
        "displayMobileATCRightAligned": displayMobileAtcRightAligned,
        "bannerModulesEnable": bannerModulesEnable,
        "enableLHNCategoryTree": enableLhnCategoryTree,
        "lcpImageQuality": lcpImageQuality,
        "searchPersistentFilterEnable": searchPersistentFilterEnable,
        "enableLCPSingleImagePrefetchScaleFallback":
            enableLcpSingleImagePrefetchScaleFallback,
        "clientFetchTimeoutMs": clientFetchTimeoutMs,
        "enableSearchSSRParallelQueries": enableSearchSsrParallelQueries,
        "enableSimilarItems": enableSimilarItems,
        "searchPageBuyNowType": searchPageBuyNowType,
        "imageSizeEnum": imageSizeEnum,
        "enableSecondaryStackType": enableSecondaryStackType,
        "partialRenderEnable": partialRenderEnable,
        "tileTakeOver": tileTakeOver,
        "enableRemoveEmptyProductVariantRows":
            enableRemoveEmptyProductVariantRows,
      };
}

class Shared {
  Shared({
    required this.all,
  });

  SharedAll all;

  factory Shared.fromJson(Map<String, dynamic> json) => Shared(
        all: SharedAll.fromJson(json["_all_"]),
      );

  Map<String, dynamic> toJson() => {
        "_all_": all.toJson(),
      };
}

class SharedAll {
  SharedAll({
    required this.helpLinkMobileAlertsTerms,
    required this.legacySiteNgRedirectEnabled,
    required this.legacySiteInhomeRedirectEnabled,
    required this.helpLinkReturnRefunds,
    required this.legacySiteDirectspendingRedirectEnabled,
    required this.helpLinkMpReturnPolicy,
    required this.legacySiteEbtRedirectEnabled,
    required this.helpLinkTermsOfUse,
    required this.enableWaitingHallway,
    required this.disableGetCartSsr,
    required this.helpLinkStorePurchase,
    required this.beaconWithQuantumMetrics,
    required this.bookSlotPersistentFilterEnable,
    required this.enableGicBookslot,
    required this.enableExpressSla,
    required this.enableSinglePaymentForm,
    required this.aeModuleHeaderText,
    required this.enablePersistedCartId,
    required this.enableQueueSizeIncrease,
    required this.cacheFullFooterVersion,
    required this.enableIbotta2XRewards,
    required this.enableAccSchedulingUpsell,
    required this.enableOutOfStockFiltering,
    required this.enableFeedbackSubmitPageType,
    required this.enableEbtCheckBalance,
    required this.itemReservationsBannerText,
    required this.enableBuyNowCxoRedirect,
    required this.enableSmileNowPricing,
    required this.enableBuyNowFreeShippingNudge,
    required this.enableEnhancedCarouselTiles,
    required this.substitutionItemPriceAndQuantityClarity,
    required this.enableHpRedesign,
    required this.accSlotShortcutMaxSlotCount,
    required this.enableAccUpsellVariant,
    required this.enableFulfillmentDisplay,
    required this.enableCsp,
    required this.cacheHeaderVersion,
    required this.enableSmileSaveBadge,
    required this.enableWplusRetentionNudge,
    required this.enableLiquorBoxAlcoholExpansionCartBookslot,
    required this.enableBuyNow,
    required this.enableChargeForSubs,
    required this.enableNoOrderMinimumFee,
    required this.cspReportOnlyOverrides,
    required this.enableFullPageCart,
    required this.savingsRecommendationFlag,
    required this.cacheHeaderExpireDurationMs,
    required this.enableAccShipInsteadCta,
    required this.enableHubAndSpoke,
    required this.enableCartParallelFetch,
    required this.queueRefetchInterval,
    required this.enableBuyNowWallet,
    required this.enableBuyNowSavings,
    required this.queueMaxRefetchDuration,
    required this.subscriptionManagePageUrl,
    required this.enableSmileWasPricing,
    required this.enableAstCookie,
    required this.enableFpo,
    required this.cvEndpoint,
    required this.enableFloatingAddToOrder,
    required this.enableSinglePaymentFormWallet,
    required this.enableHpo,
    required this.enableDynamicOptionsFeedback,
    required this.enableSinglePageXo,
    required this.cacheFooterExpireDurationMs,
    required this.enableQueueing,
    required this.enableWplusSignUpOffer,
    required this.foo,
    required this.enableBadges,
    required this.cacheFooterVersion,
    required this.enableWeeklyReservationCartBookslot,
    required this.enableBuyNowSflPrompt,
    required this.enableRebrandRewardsToCash,
    required this.substitutionsOptInClarity,
    required this.enableDynamicMainReducer,
    required this.enableBuyNowPromiseMessage,
    required this.enableBenefitTracker,
    required this.placeholder,
    required this.enableBenefitBadge,
    required this.enablePersistedQueries,
    required this.enableCsrBootstrapCall,
    required this.enableFeedbackGqlMigration,
    required this.enableBuyNowAspectiva,
    required this.enableAdSessionId,
    required this.cacheFullFooterExpireDurationMs,
    required this.queueTimeToCompletePurchase,
    required this.enableWmtpcBenefitCard,
    required this.enableEnhancedCarouselTilesByCategory,
    required this.enableGifting,
    required this.enableBuyNowAos,
    required this.enableCheckoutProp65,
    required this.enableBuyNowTyUrl,
    required this.enablePartialSwitchModuleLevelCartBookslot,
    required this.enableGicEngagement,
    required this.disableAuthHeaderCheck,
    required this.enableSlotsParallelFetch,
    required this.enableWalmartPlusFreeDiscountedExpress,
    required this.enableMpPickupBottomSheet,
  });

  String helpLinkMobileAlertsTerms;
  bool legacySiteNgRedirectEnabled;
  bool legacySiteInhomeRedirectEnabled;
  String helpLinkReturnRefunds;
  bool legacySiteDirectspendingRedirectEnabled;
  String helpLinkMpReturnPolicy;
  bool legacySiteEbtRedirectEnabled;
  String helpLinkTermsOfUse;
  bool enableWaitingHallway;
  bool disableGetCartSsr;
  String helpLinkStorePurchase;
  bool beaconWithQuantumMetrics;
  bool bookSlotPersistentFilterEnable;
  bool enableGicBookslot;
  bool enableExpressSla;
  bool enableSinglePaymentForm;
  String aeModuleHeaderText;
  bool enablePersistedCartId;
  bool enableQueueSizeIncrease;
  int cacheFullFooterVersion;
  bool enableIbotta2XRewards;
  bool enableAccSchedulingUpsell;
  bool enableOutOfStockFiltering;
  bool enableFeedbackSubmitPageType;
  bool enableEbtCheckBalance;
  String itemReservationsBannerText;
  bool enableBuyNowCxoRedirect;
  bool enableSmileNowPricing;
  bool enableBuyNowFreeShippingNudge;
  bool enableEnhancedCarouselTiles;
  bool substitutionItemPriceAndQuantityClarity;
  bool enableHpRedesign;
  int accSlotShortcutMaxSlotCount;
  int enableAccUpsellVariant;
  bool enableFulfillmentDisplay;
  bool enableCsp;
  int cacheHeaderVersion;
  bool enableSmileSaveBadge;
  bool enableWplusRetentionNudge;
  bool enableLiquorBoxAlcoholExpansionCartBookslot;
  bool enableBuyNow;
  bool enableChargeForSubs;
  bool enableNoOrderMinimumFee;
  String cspReportOnlyOverrides;
  bool enableFullPageCart;
  int savingsRecommendationFlag;
  int cacheHeaderExpireDurationMs;
  bool enableAccShipInsteadCta;
  bool enableHubAndSpoke;
  bool enableCartParallelFetch;
  int queueRefetchInterval;
  bool enableBuyNowWallet;
  bool enableBuyNowSavings;
  int queueMaxRefetchDuration;
  String subscriptionManagePageUrl;
  bool enableSmileWasPricing;
  bool enableAstCookie;
  bool enableFpo;
  String cvEndpoint;
  bool enableFloatingAddToOrder;
  bool enableSinglePaymentFormWallet;
  bool enableHpo;
  bool enableDynamicOptionsFeedback;
  bool enableSinglePageXo;
  int cacheFooterExpireDurationMs;
  bool enableQueueing;
  bool enableWplusSignUpOffer;
  bool foo;
  bool enableBadges;
  int cacheFooterVersion;
  bool enableWeeklyReservationCartBookslot;
  bool enableBuyNowSflPrompt;
  bool enableRebrandRewardsToCash;
  bool substitutionsOptInClarity;
  bool enableDynamicMainReducer;
  bool enableBuyNowPromiseMessage;
  bool enableBenefitTracker;
  String placeholder;
  bool enableBenefitBadge;
  bool enablePersistedQueries;
  bool enableCsrBootstrapCall;
  bool enableFeedbackGqlMigration;
  bool enableBuyNowAspectiva;
  bool enableAdSessionId;
  int cacheFullFooterExpireDurationMs;
  int queueTimeToCompletePurchase;
  bool enableWmtpcBenefitCard;
  String enableEnhancedCarouselTilesByCategory;
  bool enableGifting;
  bool enableBuyNowAos;
  bool enableCheckoutProp65;
  bool enableBuyNowTyUrl;
  bool enablePartialSwitchModuleLevelCartBookslot;
  bool enableGicEngagement;
  bool disableAuthHeaderCheck;
  bool enableSlotsParallelFetch;
  bool enableWalmartPlusFreeDiscountedExpress;
  bool enableMpPickupBottomSheet;

  factory SharedAll.fromJson(Map<String, dynamic> json) => SharedAll(
        helpLinkMobileAlertsTerms: json["helpLinkMobileAlertsTerms"],
        legacySiteNgRedirectEnabled: json["legacySiteNGRedirectEnabled"],
        legacySiteInhomeRedirectEnabled:
            json["legacySiteInhomeRedirectEnabled"],
        helpLinkReturnRefunds: json["helpLinkReturnRefunds"],
        legacySiteDirectspendingRedirectEnabled:
            json["legacySiteDirectspendingRedirectEnabled"],
        helpLinkMpReturnPolicy: json["helpLinkMPReturnPolicy"],
        legacySiteEbtRedirectEnabled: json["legacySiteEbtRedirectEnabled"],
        helpLinkTermsOfUse: json["helpLinkTermsOfUse"],
        enableWaitingHallway: json["enableWaitingHallway"],
        disableGetCartSsr: json["disableGetCartSSR"],
        helpLinkStorePurchase: json["helpLinkStorePurchase"],
        beaconWithQuantumMetrics: json["beaconWithQuantumMetrics"],
        bookSlotPersistentFilterEnable: json["bookSlotPersistentFilterEnable"],
        enableGicBookslot: json["enableGICBookslot"],
        enableExpressSla: json["enableExpressSla"],
        enableSinglePaymentForm: json["enableSinglePaymentForm"],
        aeModuleHeaderText: json["aeModuleHeaderText"],
        enablePersistedCartId: json["enablePersistedCartId"],
        enableQueueSizeIncrease: json["enableQueueSizeIncrease"],
        cacheFullFooterVersion: json["cacheFullFooterVersion"],
        enableIbotta2XRewards: json["enableIbotta2xRewards"],
        enableAccSchedulingUpsell: json["enableACCSchedulingUpsell"],
        enableOutOfStockFiltering: json["enableOutOfStockFiltering"],
        enableFeedbackSubmitPageType: json["enableFeedbackSubmitPageType"],
        enableEbtCheckBalance: json["enableEBTCheckBalance"],
        itemReservationsBannerText: json["itemReservationsBannerText"],
        enableBuyNowCxoRedirect: json["enableBuyNowCXORedirect"],
        enableSmileNowPricing: json["enableSmileNowPricing"],
        enableBuyNowFreeShippingNudge: json["enableBuyNowFreeShippingNudge"],
        enableEnhancedCarouselTiles: json["enableEnhancedCarouselTiles"],
        substitutionItemPriceAndQuantityClarity:
            json["substitutionItemPriceAndQuantityClarity"],
        enableHpRedesign: json["enableHpRedesign"],
        accSlotShortcutMaxSlotCount: json["accSlotShortcutMaxSlotCount"],
        enableAccUpsellVariant: json["enableAccUpsellVariant"],
        enableFulfillmentDisplay: json["enableFulfillmentDisplay"],
        enableCsp: json["enableCsp"],
        cacheHeaderVersion: json["cacheHeaderVersion"],
        enableSmileSaveBadge: json["enableSmileSaveBadge"],
        enableWplusRetentionNudge: json["enableWplusRetentionNudge"],
        enableLiquorBoxAlcoholExpansionCartBookslot:
            json["enableLiquorBoxAlcoholExpansionCartBookslot"],
        enableBuyNow: json["enableBuyNow"],
        enableChargeForSubs: json["enableChargeForSubs"],
        enableNoOrderMinimumFee: json["enableNoOrderMinimumFee"],
        cspReportOnlyOverrides: json["cspReportOnlyOverrides"],
        enableFullPageCart: json["enableFullPageCart"],
        savingsRecommendationFlag: json["savingsRecommendationFlag"],
        cacheHeaderExpireDurationMs: json["cacheHeaderExpireDurationMs"],
        enableAccShipInsteadCta: json["enableACCShipInsteadCTA"],
        enableHubAndSpoke: json["enableHubAndSpoke"],
        enableCartParallelFetch: json["enableCartParallelFetch"],
        queueRefetchInterval: json["queueRefetchInterval"],
        enableBuyNowWallet: json["enableBuyNowWallet"],
        enableBuyNowSavings: json["enableBuyNowSavings"],
        queueMaxRefetchDuration: json["queueMaxRefetchDuration"],
        subscriptionManagePageUrl: json["subscriptionManagePageUrl"],
        enableSmileWasPricing: json["enableSmileWasPricing"],
        enableAstCookie: json["enableAstCookie"],
        enableFpo: json["enableFPO"],
        cvEndpoint: json["cvEndpoint"],
        enableFloatingAddToOrder: json["enableFloatingAddToOrder"],
        enableSinglePaymentFormWallet: json["enableSinglePaymentFormWallet"],
        enableHpo: json["enableHPO"],
        enableDynamicOptionsFeedback: json["enableDynamicOptionsFeedback"],
        enableSinglePageXo: json["enableSinglePageXO"],
        cacheFooterExpireDurationMs: json["cacheFooterExpireDurationMs"],
        enableQueueing: json["enableQueueing"],
        enableWplusSignUpOffer: json["enableWplusSignUpOffer"],
        foo: json["foo"],
        enableBadges: json["enableBadges"],
        cacheFooterVersion: json["cacheFooterVersion"],
        enableWeeklyReservationCartBookslot:
            json["enableWeeklyReservationCartBookslot"],
        enableBuyNowSflPrompt: json["enableBuyNowSFLPrompt"],
        enableRebrandRewardsToCash: json["enableRebrandRewardsToCash"],
        substitutionsOptInClarity: json["substitutionsOptInClarity"],
        enableDynamicMainReducer: json["enableDynamicMainReducer"],
        enableBuyNowPromiseMessage: json["enableBuyNowPromiseMessage"],
        enableBenefitTracker: json["enableBenefitTracker"],
        placeholder: json["placeholder"],
        enableBenefitBadge: json["enableBenefitBadge"],
        enablePersistedQueries: json["enablePersistedQueries"],
        enableCsrBootstrapCall: json["enableCSRBootstrapCall"],
        enableFeedbackGqlMigration: json["enableFeedbackGqlMigration"],
        enableBuyNowAspectiva: json["enableBuyNowAspectiva"],
        enableAdSessionId: json["enableAdSessionId"],
        cacheFullFooterExpireDurationMs:
            json["cacheFullFooterExpireDurationMs"],
        queueTimeToCompletePurchase: json["queueTimeToCompletePurchase"],
        enableWmtpcBenefitCard: json["enableWmtpcBenefitCard"],
        enableEnhancedCarouselTilesByCategory:
            json["enableEnhancedCarouselTilesByCategory"],
        enableGifting: json["enableGifting"],
        enableBuyNowAos: json["enableBuyNowAOS"],
        enableCheckoutProp65: json["enableCheckoutProp65"],
        enableBuyNowTyUrl: json["enableBuyNowTYUrl"],
        enablePartialSwitchModuleLevelCartBookslot:
            json["enablePartialSwitchModuleLevelCartBookslot"],
        enableGicEngagement: json["enableGicEngagement"],
        disableAuthHeaderCheck: json["disableAuthHeaderCheck"],
        enableSlotsParallelFetch: json["enableSlotsParallelFetch"],
        enableWalmartPlusFreeDiscountedExpress:
            json["enableWalmartPlusFreeDiscountedExpress"],
        enableMpPickupBottomSheet: json["enableMPPickupBottomSheet"],
      );

  Map<String, dynamic> toJson() => {
        "helpLinkMobileAlertsTerms": helpLinkMobileAlertsTerms,
        "legacySiteNGRedirectEnabled": legacySiteNgRedirectEnabled,
        "legacySiteInhomeRedirectEnabled": legacySiteInhomeRedirectEnabled,
        "helpLinkReturnRefunds": helpLinkReturnRefunds,
        "legacySiteDirectspendingRedirectEnabled":
            legacySiteDirectspendingRedirectEnabled,
        "helpLinkMPReturnPolicy": helpLinkMpReturnPolicy,
        "legacySiteEbtRedirectEnabled": legacySiteEbtRedirectEnabled,
        "helpLinkTermsOfUse": helpLinkTermsOfUse,
        "enableWaitingHallway": enableWaitingHallway,
        "disableGetCartSSR": disableGetCartSsr,
        "helpLinkStorePurchase": helpLinkStorePurchase,
        "beaconWithQuantumMetrics": beaconWithQuantumMetrics,
        "bookSlotPersistentFilterEnable": bookSlotPersistentFilterEnable,
        "enableGICBookslot": enableGicBookslot,
        "enableExpressSla": enableExpressSla,
        "enableSinglePaymentForm": enableSinglePaymentForm,
        "aeModuleHeaderText": aeModuleHeaderText,
        "enablePersistedCartId": enablePersistedCartId,
        "enableQueueSizeIncrease": enableQueueSizeIncrease,
        "cacheFullFooterVersion": cacheFullFooterVersion,
        "enableIbotta2xRewards": enableIbotta2XRewards,
        "enableACCSchedulingUpsell": enableAccSchedulingUpsell,
        "enableOutOfStockFiltering": enableOutOfStockFiltering,
        "enableFeedbackSubmitPageType": enableFeedbackSubmitPageType,
        "enableEBTCheckBalance": enableEbtCheckBalance,
        "itemReservationsBannerText": itemReservationsBannerText,
        "enableBuyNowCXORedirect": enableBuyNowCxoRedirect,
        "enableSmileNowPricing": enableSmileNowPricing,
        "enableBuyNowFreeShippingNudge": enableBuyNowFreeShippingNudge,
        "enableEnhancedCarouselTiles": enableEnhancedCarouselTiles,
        "substitutionItemPriceAndQuantityClarity":
            substitutionItemPriceAndQuantityClarity,
        "enableHpRedesign": enableHpRedesign,
        "accSlotShortcutMaxSlotCount": accSlotShortcutMaxSlotCount,
        "enableAccUpsellVariant": enableAccUpsellVariant,
        "enableFulfillmentDisplay": enableFulfillmentDisplay,
        "enableCsp": enableCsp,
        "cacheHeaderVersion": cacheHeaderVersion,
        "enableSmileSaveBadge": enableSmileSaveBadge,
        "enableWplusRetentionNudge": enableWplusRetentionNudge,
        "enableLiquorBoxAlcoholExpansionCartBookslot":
            enableLiquorBoxAlcoholExpansionCartBookslot,
        "enableBuyNow": enableBuyNow,
        "enableChargeForSubs": enableChargeForSubs,
        "enableNoOrderMinimumFee": enableNoOrderMinimumFee,
        "cspReportOnlyOverrides": cspReportOnlyOverrides,
        "enableFullPageCart": enableFullPageCart,
        "savingsRecommendationFlag": savingsRecommendationFlag,
        "cacheHeaderExpireDurationMs": cacheHeaderExpireDurationMs,
        "enableACCShipInsteadCTA": enableAccShipInsteadCta,
        "enableHubAndSpoke": enableHubAndSpoke,
        "enableCartParallelFetch": enableCartParallelFetch,
        "queueRefetchInterval": queueRefetchInterval,
        "enableBuyNowWallet": enableBuyNowWallet,
        "enableBuyNowSavings": enableBuyNowSavings,
        "queueMaxRefetchDuration": queueMaxRefetchDuration,
        "subscriptionManagePageUrl": subscriptionManagePageUrl,
        "enableSmileWasPricing": enableSmileWasPricing,
        "enableAstCookie": enableAstCookie,
        "enableFPO": enableFpo,
        "cvEndpoint": cvEndpoint,
        "enableFloatingAddToOrder": enableFloatingAddToOrder,
        "enableSinglePaymentFormWallet": enableSinglePaymentFormWallet,
        "enableHPO": enableHpo,
        "enableDynamicOptionsFeedback": enableDynamicOptionsFeedback,
        "enableSinglePageXO": enableSinglePageXo,
        "cacheFooterExpireDurationMs": cacheFooterExpireDurationMs,
        "enableQueueing": enableQueueing,
        "enableWplusSignUpOffer": enableWplusSignUpOffer,
        "foo": foo,
        "enableBadges": enableBadges,
        "cacheFooterVersion": cacheFooterVersion,
        "enableWeeklyReservationCartBookslot":
            enableWeeklyReservationCartBookslot,
        "enableBuyNowSFLPrompt": enableBuyNowSflPrompt,
        "enableRebrandRewardsToCash": enableRebrandRewardsToCash,
        "substitutionsOptInClarity": substitutionsOptInClarity,
        "enableDynamicMainReducer": enableDynamicMainReducer,
        "enableBuyNowPromiseMessage": enableBuyNowPromiseMessage,
        "enableBenefitTracker": enableBenefitTracker,
        "placeholder": placeholder,
        "enableBenefitBadge": enableBenefitBadge,
        "enablePersistedQueries": enablePersistedQueries,
        "enableCSRBootstrapCall": enableCsrBootstrapCall,
        "enableFeedbackGqlMigration": enableFeedbackGqlMigration,
        "enableBuyNowAspectiva": enableBuyNowAspectiva,
        "enableAdSessionId": enableAdSessionId,
        "cacheFullFooterExpireDurationMs": cacheFullFooterExpireDurationMs,
        "queueTimeToCompletePurchase": queueTimeToCompletePurchase,
        "enableWmtpcBenefitCard": enableWmtpcBenefitCard,
        "enableEnhancedCarouselTilesByCategory":
            enableEnhancedCarouselTilesByCategory,
        "enableGifting": enableGifting,
        "enableBuyNowAOS": enableBuyNowAos,
        "enableCheckoutProp65": enableCheckoutProp65,
        "enableBuyNowTYUrl": enableBuyNowTyUrl,
        "enablePartialSwitchModuleLevelCartBookslot":
            enablePartialSwitchModuleLevelCartBookslot,
        "enableGicEngagement": enableGicEngagement,
        "disableAuthHeaderCheck": disableAuthHeaderCheck,
        "enableSlotsParallelFetch": enableSlotsParallelFetch,
        "enableWalmartPlusFreeDiscountedExpress":
            enableWalmartPlusFreeDiscountedExpress,
        "enableMPPickupBottomSheet": enableMpPickupBottomSheet,
      };
}

class BootstrapDataFooter {
  BootstrapDataFooter({
    required this.data,
    required this.headers,
  });

  FooterData data;
  Headers headers;

  factory BootstrapDataFooter.fromJson(Map<String, dynamic> json) =>
      BootstrapDataFooter(
        data: FooterData.fromJson(json["data"]),
        headers: Headers.fromJson(json["headers"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "headers": headers.toJson(),
      };
}

class FooterData {
  FooterData({
    required this.contentLayout,
  });

  PurpleContentLayout contentLayout;

  factory FooterData.fromJson(Map<String, dynamic> json) => FooterData(
        contentLayout: PurpleContentLayout.fromJson(json["contentLayout"]),
      );

  Map<String, dynamic> toJson() => {
        "contentLayout": contentLayout.toJson(),
      };
}

class PurpleContentLayout {
  PurpleContentLayout({
    required this.modules,
  });

  List<PurpleModule> modules;

  factory PurpleContentLayout.fromJson(Map<String, dynamic> json) =>
      PurpleContentLayout(
        modules: List<PurpleModule>.from(
            json["modules"].map((x) => PurpleModule.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "modules": List<dynamic>.from(modules.map((x) => x.toJson())),
      };
}

class PurpleModule {
  PurpleModule({
    required this.name,
    required this.type,
    required this.matchedTrigger,
    required this.configs,
  });

  String name;
  String type;
  MatchedTrigger matchedTrigger;
  PurpleConfigs configs;

  factory PurpleModule.fromJson(Map<String, dynamic> json) => PurpleModule(
        name: json["name"],
        type: json["type"],
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: PurpleConfigs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class PurpleConfigs {
  PurpleConfigs({
    required this.subLinks,
  });

  List<ConfigsSubLink> subLinks;

  factory PurpleConfigs.fromJson(Map<String, dynamic> json) => PurpleConfigs(
        subLinks: List<ConfigsSubLink>.from(
            json["subLinks"].map((x) => ConfigsSubLink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "subLinks": List<dynamic>.from(subLinks.map((x) => x.toJson())),
      };
}

class ConfigsSubLink {
  ConfigsSubLink({
    required this.link,
    required this.isSfLink,
    required this.openInNewTab,
  });

  PurpleLink link;
  IsSfLink isSfLink;
  IsSfLink openInNewTab;

  factory ConfigsSubLink.fromJson(Map<String, dynamic> json) => ConfigsSubLink(
        link: PurpleLink.fromJson(json["link"]),
        isSfLink: isSfLinkValues.map[json["isSFLink"]]!,
        openInNewTab: isSfLinkValues.map[json["openInNewTab"]]!,
      );

  Map<String, dynamic> toJson() => {
        "link": link.toJson(),
        "isSFLink": isSfLinkValues.reverse[isSfLink],
        "openInNewTab": isSfLinkValues.reverse[openInNewTab],
      };
}

enum IsSfLink { FALSE, TRUE }

final isSfLinkValues =
    EnumValues({"False": IsSfLink.FALSE, "True": IsSfLink.TRUE});

class PurpleLink {
  PurpleLink({
    required this.linkText,
    required this.title,
    required this.clickThrough,
    required this.uid,
  });

  String linkText;
  String title;
  PurpleClickThrough clickThrough;
  String uid;

  factory PurpleLink.fromJson(Map<String, dynamic> json) => PurpleLink(
        linkText: json["linkText"],
        title: json["title"],
        clickThrough: PurpleClickThrough.fromJson(json["clickThrough"]),
        uid: json["uid"],
      );

  Map<String, dynamic> toJson() => {
        "linkText": linkText,
        "title": title,
        "clickThrough": clickThrough.toJson(),
        "uid": uid,
      };
}

class PurpleClickThrough {
  PurpleClickThrough({
    required this.type,
    required this.value,
    required this.rawValue,
  });

  ClickThroughType type;
  String value;
  String rawValue;

  factory PurpleClickThrough.fromJson(Map<String, dynamic> json) =>
      PurpleClickThrough(
        type: clickThroughTypeValues.map[json["type"]]!,
        value: json["value"],
        rawValue: json["rawValue"],
      );

  Map<String, dynamic> toJson() => {
        "type": clickThroughTypeValues.reverse[type],
        "value": value,
        "rawValue": rawValue,
      };
}

enum ClickThroughType { URL }

final clickThroughTypeValues = EnumValues({"url": ClickThroughType.URL});

class MatchedTrigger {
  MatchedTrigger({
    required this.zone,
  });

  String zone;

  factory MatchedTrigger.fromJson(Map<String, dynamic> json) => MatchedTrigger(
        zone: json["zone"],
      );

  Map<String, dynamic> toJson() => {
        "zone": zone,
      };
}

class BootstrapDataHeader {
  BootstrapDataHeader({
    required this.data,
    required this.headers,
  });

  HeaderData data;
  Headers headers;

  factory BootstrapDataHeader.fromJson(Map<String, dynamic> json) =>
      BootstrapDataHeader(
        data: HeaderData.fromJson(json["data"]),
        headers: Headers.fromJson(json["headers"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "headers": headers.toJson(),
      };
}

class HeaderData {
  HeaderData({
    required this.contentLayout,
  });

  FluffyContentLayout contentLayout;

  factory HeaderData.fromJson(Map<String, dynamic> json) => HeaderData(
        contentLayout: FluffyContentLayout.fromJson(json["contentLayout"]),
      );

  Map<String, dynamic> toJson() => {
        "contentLayout": contentLayout.toJson(),
      };
}

class FluffyContentLayout {
  FluffyContentLayout({
    required this.modules,
  });

  List<FluffyModule> modules;

  factory FluffyContentLayout.fromJson(Map<String, dynamic> json) =>
      FluffyContentLayout(
        modules: List<FluffyModule>.from(
            json["modules"].map((x) => FluffyModule.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "modules": List<dynamic>.from(modules.map((x) => x.toJson())),
      };
}

class FluffyModule {
  FluffyModule({
    required this.name,
    required this.type,
    required this.moduleId,
    required this.matchedTrigger,
    required this.configs,
  });

  String name;
  String type;
  String moduleId;
  MatchedTrigger matchedTrigger;
  FluffyConfigs configs;

  factory FluffyModule.fromJson(Map<String, dynamic> json) => FluffyModule(
        name: json["name"],
        type: json["type"],
        moduleId: json["moduleId"],
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: FluffyConfigs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "moduleId": moduleId,
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class FluffyConfigs {
  FluffyConfigs({
    required this.subCategory,
  });

  List<SubCategory> subCategory;

  factory FluffyConfigs.fromJson(Map<String, dynamic> json) => FluffyConfigs(
        subCategory: List<SubCategory>.from(
            json["subCategory"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
      };
}

class SubCategory {
  SubCategory({
    required this.subLinks,
  });

  List<SubCategorySubLink> subLinks;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        subLinks: List<SubCategorySubLink>.from(
            json["subLinks"].map((x) => SubCategorySubLink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "subLinks": List<dynamic>.from(subLinks.map((x) => x.toJson())),
      };
}

class SubCategorySubLink {
  SubCategorySubLink({
    required this.link,
    required this.icon,
  });

  FluffyLink link;
  String icon;

  factory SubCategorySubLink.fromJson(Map<String, dynamic> json) =>
      SubCategorySubLink(
        link: FluffyLink.fromJson(json["link"]),
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "link": link.toJson(),
        "icon": icon,
      };
}

class FluffyLink {
  FluffyLink({
    required this.linkText,
    required this.title,
    required this.clickThrough,
    required this.uid,
  });

  String linkText;
  String title;
  FluffyClickThrough clickThrough;
  String uid;

  factory FluffyLink.fromJson(Map<String, dynamic> json) => FluffyLink(
        linkText: json["linkText"],
        title: json["title"],
        clickThrough: FluffyClickThrough.fromJson(json["clickThrough"]),
        uid: json["uid"],
      );

  Map<String, dynamic> toJson() => {
        "linkText": linkText,
        "title": title,
        "clickThrough": clickThrough.toJson(),
        "uid": uid,
      };
}

class FluffyClickThrough {
  FluffyClickThrough({
    required this.value,
  });

  String value;

  factory FluffyClickThrough.fromJson(Map<String, dynamic> json) =>
      FluffyClickThrough(
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
      };
}

class Membership {
  Membership({
    required this.data,
  });

  MembershipData data;

  factory Membership.fromJson(Map<String, dynamic> json) => Membership(
        data: MembershipData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class MembershipData {
  MembershipData({
    required this.shouldShowWplusLogo,
  });

  bool shouldShowWplusLogo;

  factory MembershipData.fromJson(Map<String, dynamic> json) => MembershipData(
        shouldShowWplusLogo: json["shouldShowWplusLogo"],
      );

  Map<String, dynamic> toJson() => {
        "shouldShowWplusLogo": shouldShowWplusLogo,
      };
}

class DehydratedSearchCv {
  DehydratedSearchCv({
    required this.enableLcpHighFetchPriority,
    required this.enableLcpSingleImagePrefetch,
    required this.enableLcpSingleImagePrefetchScaleFallback,
  });

  bool enableLcpHighFetchPriority;
  bool enableLcpSingleImagePrefetch;
  bool enableLcpSingleImagePrefetchScaleFallback;

  factory DehydratedSearchCv.fromJson(Map<String, dynamic> json) =>
      DehydratedSearchCv(
        enableLcpHighFetchPriority: json["enableLCPHighFetchPriority"],
        enableLcpSingleImagePrefetch: json["enableLCPSingleImagePrefetch"],
        enableLcpSingleImagePrefetchScaleFallback:
            json["enableLCPSingleImagePrefetchScaleFallback"],
      );

  Map<String, dynamic> toJson() => {
        "enableLCPHighFetchPriority": enableLcpHighFetchPriority,
        "enableLCPSingleImagePrefetch": enableLcpSingleImagePrefetch,
        "enableLCPSingleImagePrefetchScaleFallback":
            enableLcpSingleImagePrefetchScaleFallback,
      };
}

class InitialData {
  InitialData({
    required this.searchResult,
    required this.pageMetadata,
    required this.headers,
    required this.moduleDataByZone,
    required this.contentLayout,
    required this.layoutContainerData,
  });

  SearchResult searchResult;
  ContentLayoutPageMetadata pageMetadata;
  Headers headers;
  ModuleDataByZone moduleDataByZone;
  InitialDataContentLayout contentLayout;
  LayoutContainerData layoutContainerData;

  factory InitialData.fromJson(Map<String, dynamic> json) => InitialData(
        searchResult: SearchResult.fromJson(json["searchResult"]),
        pageMetadata: ContentLayoutPageMetadata.fromJson(json["pageMetadata"]),
        headers: Headers.fromJson(json["headers"]),
        moduleDataByZone: ModuleDataByZone.fromJson(json["moduleDataByZone"]),
        contentLayout: InitialDataContentLayout.fromJson(json["contentLayout"]),
        layoutContainerData:
            LayoutContainerData.fromJson(json["layoutContainerData"]),
      );

  Map<String, dynamic> toJson() => {
        "searchResult": searchResult.toJson(),
        "pageMetadata": pageMetadata.toJson(),
        "headers": headers.toJson(),
        "moduleDataByZone": moduleDataByZone.toJson(),
        "contentLayout": contentLayout.toJson(),
        "layoutContainerData": layoutContainerData.toJson(),
      };
}

class InitialDataContentLayout {
  InitialDataContentLayout({
    required this.modules,
    required this.layouts,
    required this.pageMetadata,
  });

  List<TentacledModule> modules;
  List<LayoutElement> layouts;
  ContentLayoutPageMetadata pageMetadata;

  factory InitialDataContentLayout.fromJson(Map<String, dynamic> json) =>
      InitialDataContentLayout(
        modules: List<TentacledModule>.from(
            json["modules"].map((x) => TentacledModule.fromJson(x))),
        layouts: List<LayoutElement>.from(
            json["layouts"].map((x) => LayoutElement.fromJson(x))),
        pageMetadata: ContentLayoutPageMetadata.fromJson(json["pageMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "modules": List<dynamic>.from(modules.map((x) => x.toJson())),
        "layouts": List<dynamic>.from(layouts.map((x) => x.toJson())),
        "pageMetadata": pageMetadata.toJson(),
      };
}

class LayoutElement {
  LayoutElement({
    required this.id,
    required this.layout,
  });

  String id;
  LayoutLayout layout;

  factory LayoutElement.fromJson(Map<String, dynamic> json) => LayoutElement(
        id: json["id"],
        layout: LayoutLayout.fromJson(json["layout"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "layout": layout.toJson(),
      };
}

class LayoutLayout {
  LayoutLayout({
    required this.type,
    required this.name,
    required this.definition,
    required this.channel,
    required this.version,
    required this.status,
  });

  String type;
  String name;
  LayoutContainerData definition;
  Channel channel;
  String version;
  String status;

  factory LayoutLayout.fromJson(Map<String, dynamic> json) => LayoutLayout(
        type: json["type"],
        name: json["name"],
        definition: LayoutContainerData.fromJson(json["definition"]),
        channel: Channel.fromJson(json["channel"]),
        version: json["version"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "definition": definition.toJson(),
        "channel": channel.toJson(),
        "version": version,
        "status": status,
      };
}

class Channel {
  Channel({
    required this.id,
    required this.status,
  });

  String id;
  String status;

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
      };
}

class LayoutContainerData {
  LayoutContainerData({
    required this.type,
    required this.flow,
    required this.content,
  });

  String type;
  String flow;
  List<ContentElement> content;

  factory LayoutContainerData.fromJson(Map<String, dynamic> json) =>
      LayoutContainerData(
        type: json["type"],
        flow: json["flow"],
        content: List<ContentElement>.from(
            json["content"].map((x) => ContentElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "flow": flow,
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
      };
}

class ContentElement {
  ContentElement({
    required this.type,
    required this.flow,
    required this.content,
  });

  String type;
  String flow;
  ContentContent content;

  factory ContentElement.fromJson(Map<String, dynamic> json) => ContentElement(
        type: json["type"],
        flow: json["flow"],
        content: ContentContent.fromJson(json["content"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "flow": flow,
        "content": content.toJson(),
      };
}

class ContentContent {
  ContentContent({
    required this.type,
    required this.id,
    required this.mapping,
  });

  String type;
  String id;
  List<Mapping> mapping;

  factory ContentContent.fromJson(Map<String, dynamic> json) => ContentContent(
        type: json["type"],
        id: json["id"],
        mapping:
            List<Mapping>.from(json["mapping"].map((x) => Mapping.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "mapping": List<dynamic>.from(mapping.map((x) => x.toJson())),
      };
}

class Mapping {
  Mapping({
    required this.type,
    required this.options,
  });

  MappingType type;
  Options options;

  factory Mapping.fromJson(Map<String, dynamic> json) => Mapping(
        type: mappingTypeValues.map[json["type"]]!,
        options: Options.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "type": mappingTypeValues.reverse[type],
        "options": options.toJson(),
      };
}

class Options {
  Options({
    required this.refId,
    this.tempoLabel,
    this.displayInTempo,
  });

  String refId;
  String? tempoLabel;
  bool? displayInTempo;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        refId: json["refId"],
        tempoLabel: json["tempoLabel"],
        displayInTempo: json["displayInTempo"],
      );

  Map<String, dynamic> toJson() => {
        "refId": refId,
        "tempoLabel": tempoLabel,
        "displayInTempo": displayInTempo,
      };
}

enum MappingType { ZONE, EXTERNAL }

final mappingTypeValues =
    EnumValues({"EXTERNAL": MappingType.EXTERNAL, "ZONE": MappingType.ZONE});

class TentacledModule {
  TentacledModule({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  TentacledConfigs configs;

  factory TentacledModule.fromJson(Map<String, dynamic> json) =>
      TentacledModule(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: TentacledConfigs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class TentacledConfigs {
  TentacledConfigs({
    required this.typename,
    this.moduleSource,
    this.pillsV2,
    this.topNavFacets,
    this.allSortAndFilterFacets,
    this.rawConfigs,
    this.ad,
    this.moduleLocation,
    this.fitments,
    this.title,
    this.subTitle,
    this.urlLinkText,
    this.url,
    this.zoneV1,
  });

  String typename;
  String? moduleSource;
  dynamic pillsV2;
  List<Facet>? topNavFacets;
  List<Facet>? allSortAndFilterFacets;
  PurpleRawConfigs? rawConfigs;
  Ad? ad;
  String? moduleLocation;
  dynamic fitments;
  dynamic title;
  dynamic subTitle;
  dynamic urlLinkText;
  dynamic url;
  List<ZoneV1>? zoneV1;

  factory TentacledConfigs.fromJson(Map<String, dynamic> json) =>
      TentacledConfigs(
        typename: json["__typename"],
        moduleSource: json["moduleSource"],
        pillsV2: json["pillsV2"],
        topNavFacets: json["topNavFacets"] == null
            ? []
            : List<Facet>.from(
                json["topNavFacets"]!.map((x) => Facet.fromJson(x))),
        allSortAndFilterFacets: json["allSortAndFilterFacets"] == null
            ? []
            : List<Facet>.from(
                json["allSortAndFilterFacets"]!.map((x) => Facet.fromJson(x))),
        rawConfigs: json["_rawConfigs"] == null
            ? null
            : PurpleRawConfigs.fromJson(json["_rawConfigs"]),
        ad: json["ad"] == null ? null : Ad.fromJson(json["ad"]),
        moduleLocation: json["moduleLocation"],
        fitments: json["fitments"],
        title: json["title"],
        subTitle: json["subTitle"],
        urlLinkText: json["urlLinkText"],
        url: json["url"],
        zoneV1: json["zoneV1"] == null
            ? []
            : List<ZoneV1>.from(json["zoneV1"]!.map((x) => ZoneV1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "moduleSource": moduleSource,
        "pillsV2": pillsV2,
        "topNavFacets": topNavFacets == null
            ? []
            : List<dynamic>.from(topNavFacets!.map((x) => x.toJson())),
        "allSortAndFilterFacets": allSortAndFilterFacets == null
            ? []
            : List<dynamic>.from(
                allSortAndFilterFacets!.map((x) => x.toJson())),
        "_rawConfigs": rawConfigs?.toJson(),
        "ad": ad?.toJson(),
        "moduleLocation": moduleLocation,
        "fitments": fitments,
        "title": title,
        "subTitle": subTitle,
        "urlLinkText": urlLinkText,
        "url": url,
        "zoneV1": zoneV1 == null
            ? []
            : List<dynamic>.from(zoneV1!.map((x) => x.toJson())),
      };
}

class Ad {
  Ad({
    required this.status,
    required this.moduleType,
    required this.platform,
    required this.pageId,
    required this.pageType,
    required this.storeId,
    required this.stateCode,
    required this.zipCode,
    required this.pageContext,
    required this.moduleConfigs,
    required this.adsContext,
    required this.adRequestComposite,
    required this.adContent,
  });

  String status;
  String moduleType;
  String platform;
  String pageId;
  String pageType;
  String storeId;
  String stateCode;
  String zipCode;
  PageContext pageContext;
  Configs moduleConfigs;
  AdsContext adsContext;
  AdRequestComposite adRequestComposite;
  AdContent adContent;

  factory Ad.fromJson(Map<String, dynamic> json) => Ad(
        status: json["status"],
        moduleType: json["moduleType"],
        platform: json["platform"],
        pageId: json["pageId"],
        pageType: json["pageType"],
        storeId: json["storeId"],
        stateCode: json["stateCode"],
        zipCode: json["zipCode"],
        pageContext: PageContext.fromJson(json["pageContext"]),
        moduleConfigs: Configs.fromJson(json["moduleConfigs"]),
        adsContext: AdsContext.fromJson(json["adsContext"]),
        adRequestComposite:
            AdRequestComposite.fromJson(json["adRequestComposite"]),
        adContent: AdContent.fromJson(json["adContent"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "moduleType": moduleType,
        "platform": platform,
        "pageId": pageId,
        "pageType": pageType,
        "storeId": storeId,
        "stateCode": stateCode,
        "zipCode": zipCode,
        "pageContext": pageContext.toJson(),
        "moduleConfigs": moduleConfigs.toJson(),
        "adsContext": adsContext.toJson(),
        "adRequestComposite": adRequestComposite.toJson(),
        "adContent": adContent.toJson(),
      };
}

class AdContent {
  AdContent({
    required this.type,
    required this.data,
  });

  String type;
  AdContentData data;

  factory AdContent.fromJson(Map<String, dynamic> json) => AdContent(
        type: json["type"],
        data: AdContentData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "data": data.toJson(),
      };
}

class AdContentData {
  AdContentData({
    required this.typename,
    required this.adUuid,
    this.adExpInfo,
    required this.moduleInfo,
    required this.brands,
  });

  String typename;
  String adUuid;
  dynamic adExpInfo;
  String moduleInfo;
  List<dynamic> brands;

  factory AdContentData.fromJson(Map<String, dynamic> json) => AdContentData(
        typename: json["__typename"],
        adUuid: json["adUuid"],
        adExpInfo: json["adExpInfo"],
        moduleInfo: json["moduleInfo"],
        brands: List<dynamic>.from(json["brands"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "adUuid": adUuid,
        "adExpInfo": adExpInfo,
        "moduleInfo": moduleInfo,
        "brands": List<dynamic>.from(brands.map((x) => x)),
      };
}

class AdRequestComposite {
  AdRequestComposite({
    required this.categoryId,
    required this.facets,
    required this.keyword,
    required this.isDebug,
    required this.isManualShelf,
  });

  String categoryId;
  String facets;
  String keyword;
  bool isDebug;
  bool isManualShelf;

  factory AdRequestComposite.fromJson(Map<String, dynamic> json) =>
      AdRequestComposite(
        categoryId: json["categoryId"],
        facets: json["facets"],
        keyword: json["keyword"],
        isDebug: json["isDebug"],
        isManualShelf: json["isManualShelf"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "facets": facets,
        "keyword": keyword,
        "isDebug": isDebug,
        "isManualShelf": isManualShelf,
      };
}

class AdsContext {
  AdsContext({
    required this.locationContext,
    required this.itemId,
    required this.categoryId,
    required this.categoryName,
    required this.brand,
    required this.productName,
    required this.productTypeId,
    required this.normKeyword,
    required this.verticalId,
    required this.dedupeList,
  });

  LocationContext locationContext;
  String itemId;
  String categoryId;
  String categoryName;
  String brand;
  String productName;
  String productTypeId;
  String normKeyword;
  String verticalId;
  List<String> dedupeList;

  factory AdsContext.fromJson(Map<String, dynamic> json) => AdsContext(
        locationContext: LocationContext.fromJson(json["locationContext"]),
        itemId: json["itemId"],
        categoryId: json["categoryId"],
        categoryName: json["categoryName"],
        brand: json["brand"],
        productName: json["productName"],
        productTypeId: json["productTypeId"],
        normKeyword: json["normKeyword"],
        verticalId: json["verticalId"],
        dedupeList: List<String>.from(json["dedupeList"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "locationContext": locationContext.toJson(),
        "itemId": itemId,
        "categoryId": categoryId,
        "categoryName": categoryName,
        "brand": brand,
        "productName": productName,
        "productTypeId": productTypeId,
        "normKeyword": normKeyword,
        "verticalId": verticalId,
        "dedupeList": List<dynamic>.from(dedupeList.map((x) => x)),
      };
}

class LocationContext {
  LocationContext({
    required this.zipCode,
    required this.stateCode,
    required this.storeId,
    required this.pickupStore,
    required this.deliveryStore,
    required this.intent,
    required this.incatchment,
  });

  String zipCode;
  String stateCode;
  String storeId;
  String pickupStore;
  String deliveryStore;
  String intent;
  bool incatchment;

  factory LocationContext.fromJson(Map<String, dynamic> json) =>
      LocationContext(
        zipCode: json["zipCode"],
        stateCode: json["stateCode"],
        storeId: json["storeId"],
        pickupStore: json["pickupStore"],
        deliveryStore: json["deliveryStore"],
        intent: json["intent"],
        incatchment: json["incatchment"],
      );

  Map<String, dynamic> toJson() => {
        "zipCode": zipCode,
        "stateCode": stateCode,
        "storeId": storeId,
        "pickupStore": pickupStore,
        "deliveryStore": deliveryStore,
        "intent": intent,
        "incatchment": incatchment,
      };
}

class Configs {
  Configs({
    required this.moduleLocation,
  });

  String moduleLocation;

  factory Configs.fromJson(Map<String, dynamic> json) => Configs(
        moduleLocation: json["moduleLocation"],
      );

  Map<String, dynamic> toJson() => {
        "moduleLocation": moduleLocation,
      };
}

class PageContext {
  PageContext({
    required this.searchNormalize,
  });

  SearchNormalize searchNormalize;

  factory PageContext.fromJson(Map<String, dynamic> json) => PageContext(
        searchNormalize: SearchNormalize.fromJson(json["searchNormalize"]),
      );

  Map<String, dynamic> toJson() => {
        "searchNormalize": searchNormalize.toJson(),
      };
}

class SearchNormalize {
  SearchNormalize({
    required this.verticalId,
    required this.normalizedQuery,
    required this.originalQuery,
    required this.rewrittenQuery,
    required this.specificity,
    required this.topQueryCatPath,
    required this.topQueryCatPathName,
    required this.brand,
    required this.analyticsLog,
  });

  String verticalId;
  String normalizedQuery;
  String originalQuery;
  String rewrittenQuery;
  String specificity;
  String topQueryCatPath;
  String topQueryCatPathName;
  Brand brand;
  AnalyticsLog analyticsLog;

  factory SearchNormalize.fromJson(Map<String, dynamic> json) =>
      SearchNormalize(
        verticalId: json["verticalId"],
        normalizedQuery: json["normalized_query"],
        originalQuery: json["original_query"],
        rewrittenQuery: json["rewritten_query"],
        specificity: json["specificity"],
        topQueryCatPath: json["top_query_cat_path"],
        topQueryCatPathName: json["top_query_cat_path_name"],
        brand: Brand.fromJson(json["brand"]),
        analyticsLog: AnalyticsLog.fromJson(json["analytics_log"]),
      );

  Map<String, dynamic> toJson() => {
        "verticalId": verticalId,
        "normalized_query": normalizedQuery,
        "original_query": originalQuery,
        "rewritten_query": rewrittenQuery,
        "specificity": specificity,
        "top_query_cat_path": topQueryCatPath,
        "top_query_cat_path_name": topQueryCatPathName,
        "brand": brand.toJson(),
        "analytics_log": analyticsLog.toJson(),
      };
}

class AnalyticsLog {
  AnalyticsLog({
    required this.feLog,
  });

  FeLog feLog;

  factory AnalyticsLog.fromJson(Map<String, dynamic> json) => AnalyticsLog(
        feLog: FeLog.fromJson(json["fe_log"]),
      );

  Map<String, dynamic> toJson() => {
        "fe_log": feLog.toJson(),
      };
}

class FeLog {
  FeLog({
    required this.dept,
    required this.g,
    required this.s,
    required this.trf,
  });

  String dept;
  String g;
  String s;
  String trf;

  factory FeLog.fromJson(Map<String, dynamic> json) => FeLog(
        dept: json["dept"],
        g: json["g"],
        s: json["s"],
        trf: json["trf"],
      );

  Map<String, dynamic> toJson() => {
        "dept": dept,
        "g": g,
        "s": s,
        "trf": trf,
      };
}

class Brand {
  Brand({
    required this.extractedValue,
    required this.pcsBrand,
    required this.score,
  });

  String extractedValue;
  List<String> pcsBrand;
  double score;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        extractedValue: json["extractedValue"],
        pcsBrand: List<String>.from(json["pcs_brand"].map((x) => x)),
        score: json["score"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "extractedValue": extractedValue,
        "pcs_brand": List<dynamic>.from(pcsBrand.map((x) => x)),
        "score": score,
      };
}

class Facet {
  Facet({
    required this.title,
    required this.name,
    this.expandOnLoad,
    required this.type,
    required this.layout,
    this.min,
    this.max,
    this.selectedMin,
    this.selectedMax,
    this.unboundedMax,
    this.stepSize,
    this.isSelected,
    this.values,
  });

  String title;
  String name;
  bool? expandOnLoad;
  String type;
  AffinityOverride layout;
  int? min;
  int? max;
  dynamic selectedMin;
  dynamic selectedMax;
  bool? unboundedMax;
  int? stepSize;
  dynamic isSelected;
  List<ValueElement>? values;

  factory Facet.fromJson(Map<String, dynamic> json) => Facet(
        title: json["title"],
        name: json["name"],
        expandOnLoad: json["expandOnLoad"],
        type: json["type"],
        layout: affinityOverrideValues.map[json["layout"]]!,
        min: json["min"],
        max: json["max"],
        selectedMin: json["selectedMin"],
        selectedMax: json["selectedMax"],
        unboundedMax: json["unboundedMax"],
        stepSize: json["stepSize"],
        isSelected: json["isSelected"],
        values: json["values"] == null
            ? []
            : List<ValueElement>.from(
                json["values"]!.map((x) => ValueElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "name": name,
        "expandOnLoad": expandOnLoad,
        "type": type,
        "layout": affinityOverrideValues.reverse[layout],
        "min": min,
        "max": max,
        "selectedMin": selectedMin,
        "selectedMax": selectedMax,
        "unboundedMax": unboundedMax,
        "stepSize": stepSize,
        "isSelected": isSelected,
        "values": values == null
            ? []
            : List<dynamic>.from(values!.map((x) => x.toJson())),
      };
}

enum AffinityOverride { DEFAULT, PILL }

final affinityOverrideValues = EnumValues(
    {"default": AffinityOverride.DEFAULT, "pill": AffinityOverride.PILL});

class ValueElement {
  ValueElement({
    this.id,
    this.title,
    required this.name,
    this.expandOnLoad,
    this.description,
    this.type,
    this.itemCount,
    this.isSelected,
    this.baseSeoUrl,
    this.values,
  });

  String? id;
  String? title;
  String name;
  bool? expandOnLoad;
  dynamic description;
  ValueType? type;
  int? itemCount;
  bool? isSelected;
  String? baseSeoUrl;
  List<ValueElement>? values;

  factory ValueElement.fromJson(Map<String, dynamic> json) => ValueElement(
        id: json["id"],
        title: json["title"],
        name: json["name"],
        expandOnLoad: json["expandOnLoad"],
        description: json["description"],
        type: valueTypeValues.map[json["type"]]!,
        itemCount: json["itemCount"],
        isSelected: json["isSelected"],
        baseSeoUrl: json["baseSeoURL"],
        values: json["values"] == null
            ? []
            : List<ValueElement>.from(
                json["values"]!.map((x) => ValueElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "name": name,
        "expandOnLoad": expandOnLoad,
        "description": description,
        "type": valueTypeValues.reverse[type],
        "itemCount": itemCount,
        "isSelected": isSelected,
        "baseSeoURL": baseSeoUrl,
        "values": values == null
            ? []
            : List<dynamic>.from(values!.map((x) => x.toJson())),
      };
}

enum ValueType { CAT_ID }

final valueTypeValues = EnumValues({"cat_id": ValueType.CAT_ID});

class PurpleRawConfigs {
  PurpleRawConfigs({
    required this.moduleLocation,
    this.lazy,
    this.title,
  });

  String moduleLocation;
  String? lazy;
  String? title;

  factory PurpleRawConfigs.fromJson(Map<String, dynamic> json) =>
      PurpleRawConfigs(
        moduleLocation: json["moduleLocation"],
        lazy: json["lazy"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "moduleLocation": moduleLocation,
        "lazy": lazy,
        "title": title,
      };
}

class ZoneV1 {
  ZoneV1({
    required this.moduleId,
    required this.zone,
    required this.isP13NBtfModule,
    required this.isNativeLazyLoaded,
  });

  String moduleId;
  String zone;
  bool isP13NBtfModule;
  bool isNativeLazyLoaded;

  factory ZoneV1.fromJson(Map<String, dynamic> json) => ZoneV1(
        moduleId: json["moduleId"],
        zone: json["zone"],
        isP13NBtfModule: json["isP13nBtfModule"],
        isNativeLazyLoaded: json["isNativeLazyLoaded"],
      );

  Map<String, dynamic> toJson() => {
        "moduleId": moduleId,
        "zone": zone,
        "isP13nBtfModule": isP13NBtfModule,
        "isNativeLazyLoaded": isNativeLazyLoaded,
      };
}

class Schedule {
  Schedule({
    required this.priority,
  });

  int priority;

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        priority: json["priority"],
      );

  Map<String, dynamic> toJson() => {
        "priority": priority,
      };
}

class ContentLayoutPageMetadata {
  ContentLayoutPageMetadata({
    required this.location,
    required this.pageContext,
  });

  PurpleLocation location;
  PageContext pageContext;

  factory ContentLayoutPageMetadata.fromJson(Map<String, dynamic> json) =>
      ContentLayoutPageMetadata(
        location: PurpleLocation.fromJson(json["location"]),
        pageContext: PageContext.fromJson(json["pageContext"]),
      );

  Map<String, dynamic> toJson() => {
        "location": location.toJson(),
        "pageContext": pageContext.toJson(),
      };
}

class PurpleLocation {
  PurpleLocation({
    required this.pickupStore,
    required this.deliveryStore,
    required this.intent,
    required this.postalCode,
    required this.stateOrProvinceCode,
    required this.city,
    required this.storeId,
    this.accessPointId,
    this.accessType,
    this.spokeNodeId,
  });

  String pickupStore;
  String deliveryStore;
  String intent;
  String postalCode;
  String stateOrProvinceCode;
  String city;
  String storeId;
  dynamic accessPointId;
  dynamic accessType;
  dynamic spokeNodeId;

  factory PurpleLocation.fromJson(Map<String, dynamic> json) => PurpleLocation(
        pickupStore: json["pickupStore"],
        deliveryStore: json["deliveryStore"],
        intent: json["intent"],
        postalCode: json["postalCode"],
        stateOrProvinceCode: json["stateOrProvinceCode"],
        city: json["city"],
        storeId: json["storeId"],
        accessPointId: json["accessPointId"],
        accessType: json["accessType"],
        spokeNodeId: json["spokeNodeId"],
      );

  Map<String, dynamic> toJson() => {
        "pickupStore": pickupStore,
        "deliveryStore": deliveryStore,
        "intent": intent,
        "postalCode": postalCode,
        "stateOrProvinceCode": stateOrProvinceCode,
        "city": city,
        "storeId": storeId,
        "accessPointId": accessPointId,
        "accessType": accessType,
        "spokeNodeId": spokeNodeId,
      };
}

class ModuleDataByZone {
  ModuleDataByZone({
    required this.pillsTopZone,
    required this.topZone3,
    required this.bottomZone1,
    required this.topZone2,
    required this.topZone5,
    required this.topZone6,
    required this.topZone1,
    required this.bottomZone2,
    required this.invalid,
  });

  PillsTopZone pillsTopZone;
  TopZone3 topZone3;
  Zone1 bottomZone1;
  TopZone2 topZone2;
  TopZone5 topZone5;
  TopZone6 topZone6;
  Zone1 topZone1;
  BottomZone2 bottomZone2;
  Invalid invalid;

  factory ModuleDataByZone.fromJson(Map<String, dynamic> json) =>
      ModuleDataByZone(
        pillsTopZone: PillsTopZone.fromJson(json["pillsTopZone"]),
        topZone3: TopZone3.fromJson(json["topZone3"]),
        bottomZone1: Zone1.fromJson(json["bottomZone1"]),
        topZone2: TopZone2.fromJson(json["topZone2"]),
        topZone5: TopZone5.fromJson(json["topZone5"]),
        topZone6: TopZone6.fromJson(json["topZone6"]),
        topZone1: Zone1.fromJson(json["topZone1"]),
        bottomZone2: BottomZone2.fromJson(json["bottomZone2"]),
        invalid: Invalid.fromJson(json["INVALID"]),
      );

  Map<String, dynamic> toJson() => {
        "pillsTopZone": pillsTopZone.toJson(),
        "topZone3": topZone3.toJson(),
        "bottomZone1": bottomZone1.toJson(),
        "topZone2": topZone2.toJson(),
        "topZone5": topZone5.toJson(),
        "topZone6": topZone6.toJson(),
        "topZone1": topZone1.toJson(),
        "bottomZone2": bottomZone2.toJson(),
        "INVALID": invalid.toJson(),
      };
}

class Zone1 {
  Zone1({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  BottomZone1Configs configs;

  factory Zone1.fromJson(Map<String, dynamic> json) => Zone1(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: BottomZone1Configs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class BottomZone1Configs {
  BottomZone1Configs({
    required this.typename,
    required this.rawConfigs,
    this.ad,
  });

  String typename;
  FluffyRawConfigs rawConfigs;
  dynamic ad;

  factory BottomZone1Configs.fromJson(Map<String, dynamic> json) =>
      BottomZone1Configs(
        typename: json["__typename"],
        rawConfigs: FluffyRawConfigs.fromJson(json["_rawConfigs"]),
        ad: json["ad"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "_rawConfigs": rawConfigs.toJson(),
        "ad": ad,
      };
}

class FluffyRawConfigs {
  FluffyRawConfigs({
    required this.moduleLocation,
    required this.lazy,
  });

  String moduleLocation;
  String lazy;

  factory FluffyRawConfigs.fromJson(Map<String, dynamic> json) =>
      FluffyRawConfigs(
        moduleLocation: json["moduleLocation"],
        lazy: json["lazy"],
      );

  Map<String, dynamic> toJson() => {
        "moduleLocation": moduleLocation,
        "lazy": lazy,
      };
}

class BottomZone2 {
  BottomZone2({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  BottomZone2Configs configs;

  factory BottomZone2.fromJson(Map<String, dynamic> json) => BottomZone2(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: BottomZone2Configs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class BottomZone2Configs {
  BottomZone2Configs({
    required this.typename,
    required this.rawConfigs,
  });

  String typename;
  PurpleRawConfigs rawConfigs;

  factory BottomZone2Configs.fromJson(Map<String, dynamic> json) =>
      BottomZone2Configs(
        typename: json["__typename"],
        rawConfigs: PurpleRawConfigs.fromJson(json["_rawConfigs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "_rawConfigs": rawConfigs.toJson(),
      };
}

class Invalid {
  Invalid({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  InvalidConfigs configs;

  factory Invalid.fromJson(Map<String, dynamic> json) => Invalid(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: InvalidConfigs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class InvalidConfigs {
  InvalidConfigs({
    required this.typename,
    required this.zoneV1,
  });

  String typename;
  List<ZoneV1> zoneV1;

  factory InvalidConfigs.fromJson(Map<String, dynamic> json) => InvalidConfigs(
        typename: json["__typename"],
        zoneV1:
            List<ZoneV1>.from(json["zoneV1"].map((x) => ZoneV1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "zoneV1": List<dynamic>.from(zoneV1.map((x) => x.toJson())),
      };
}

class PillsTopZone {
  PillsTopZone({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  PillsTopZoneConfigs configs;

  factory PillsTopZone.fromJson(Map<String, dynamic> json) => PillsTopZone(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: PillsTopZoneConfigs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class PillsTopZoneConfigs {
  PillsTopZoneConfigs({
    required this.typename,
    required this.moduleSource,
    this.pillsV2,
  });

  String typename;
  String moduleSource;
  dynamic pillsV2;

  factory PillsTopZoneConfigs.fromJson(Map<String, dynamic> json) =>
      PillsTopZoneConfigs(
        typename: json["__typename"],
        moduleSource: json["moduleSource"],
        pillsV2: json["pillsV2"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "moduleSource": moduleSource,
        "pillsV2": pillsV2,
      };
}

class TopZone2 {
  TopZone2({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  TopZone2Configs configs;

  factory TopZone2.fromJson(Map<String, dynamic> json) => TopZone2(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: TopZone2Configs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class TopZone2Configs {
  TopZone2Configs({
    required this.typename,
    required this.rawConfigs,
    required this.moduleLocation,
    required this.ad,
  });

  String typename;
  Configs rawConfigs;
  String moduleLocation;
  Ad ad;

  factory TopZone2Configs.fromJson(Map<String, dynamic> json) =>
      TopZone2Configs(
        typename: json["__typename"],
        rawConfigs: Configs.fromJson(json["_rawConfigs"]),
        moduleLocation: json["moduleLocation"],
        ad: Ad.fromJson(json["ad"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "_rawConfigs": rawConfigs.toJson(),
        "moduleLocation": moduleLocation,
        "ad": ad.toJson(),
      };
}

class TopZone3 {
  TopZone3({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  TopZone3Configs configs;

  factory TopZone3.fromJson(Map<String, dynamic> json) => TopZone3(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: TopZone3Configs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class TopZone3Configs {
  TopZone3Configs({
    required this.typename,
    required this.topNavFacets,
    required this.allSortAndFilterFacets,
  });

  String typename;
  List<Facet> topNavFacets;
  List<Facet> allSortAndFilterFacets;

  factory TopZone3Configs.fromJson(Map<String, dynamic> json) =>
      TopZone3Configs(
        typename: json["__typename"],
        topNavFacets: List<Facet>.from(
            json["topNavFacets"].map((x) => Facet.fromJson(x))),
        allSortAndFilterFacets: List<Facet>.from(
            json["allSortAndFilterFacets"].map((x) => Facet.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "topNavFacets": List<dynamic>.from(topNavFacets.map((x) => x.toJson())),
        "allSortAndFilterFacets":
            List<dynamic>.from(allSortAndFilterFacets.map((x) => x.toJson())),
      };
}

class TopZone5 {
  TopZone5({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  TopZone5Configs configs;

  factory TopZone5.fromJson(Map<String, dynamic> json) => TopZone5(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: TopZone5Configs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class TopZone5Configs {
  TopZone5Configs({
    required this.typename,
    this.fitments,
  });

  String typename;
  dynamic fitments;

  factory TopZone5Configs.fromJson(Map<String, dynamic> json) =>
      TopZone5Configs(
        typename: json["__typename"],
        fitments: json["fitments"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "fitments": fitments,
      };
}

class TopZone6 {
  TopZone6({
    required this.typename,
    required this.type,
    required this.name,
    required this.version,
    required this.moduleId,
    required this.schedule,
    required this.matchedTrigger,
    required this.configs,
  });

  String typename;
  String type;
  String name;
  int version;
  String moduleId;
  Schedule schedule;
  MatchedTrigger matchedTrigger;
  TopZone6Configs configs;

  factory TopZone6.fromJson(Map<String, dynamic> json) => TopZone6(
        typename: json["__typename"],
        type: json["type"],
        name: json["name"],
        version: json["version"],
        moduleId: json["moduleId"],
        schedule: Schedule.fromJson(json["schedule"]),
        matchedTrigger: MatchedTrigger.fromJson(json["matchedTrigger"]),
        configs: TopZone6Configs.fromJson(json["configs"]),
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "type": type,
        "name": name,
        "version": version,
        "moduleId": moduleId,
        "schedule": schedule.toJson(),
        "matchedTrigger": matchedTrigger.toJson(),
        "configs": configs.toJson(),
      };
}

class TopZone6Configs {
  TopZone6Configs({
    required this.typename,
    this.title,
    this.subTitle,
    this.urlLinkText,
    this.url,
  });

  String typename;
  dynamic title;
  dynamic subTitle;
  dynamic urlLinkText;
  dynamic url;

  factory TopZone6Configs.fromJson(Map<String, dynamic> json) =>
      TopZone6Configs(
        typename: json["__typename"],
        title: json["title"],
        subTitle: json["subTitle"],
        urlLinkText: json["urlLinkText"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": typename,
        "title": title,
        "subTitle": subTitle,
        "urlLinkText": urlLinkText,
        "url": url,
      };
}

class SearchResult {
  SearchResult({
    required this.title,
    required this.aggregatedCount,
    required this.debug,
    required this.itemStacks,
    required this.pageMetadata,
    required this.paginationV2,
    required this.spelling,
    required this.requestContext,
    required this.errorResponse,
    required this.count,
    required this.gridItemsCount,
    required this.catInfo,
    this.nonProduct,
    this.pac,
    this.translation,
  });

  String title;
  int aggregatedCount;
  Debug debug;
  List<ItemStackElement> itemStacks;
  SearchResultPageMetadata pageMetadata;
  PaginationV2 paginationV2;
  Headers spelling;
  RequestContext requestContext;
  ErrorResponse errorResponse;
  int count;
  int gridItemsCount;
  CatInfo catInfo;
  dynamic nonProduct;
  dynamic pac;
  dynamic translation;

  factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
        title: json["title"],
        aggregatedCount: json["aggregatedCount"],
        debug: Debug.fromJson(json["debug"]),
        itemStacks: List<ItemStackElement>.from(
            json["itemStacks"].map((x) => ItemStackElement.fromJson(x))),
        pageMetadata: SearchResultPageMetadata.fromJson(json["pageMetadata"]),
        paginationV2: PaginationV2.fromJson(json["paginationV2"]),
        spelling: Headers.fromJson(json["spelling"]),
        requestContext: RequestContext.fromJson(json["requestContext"]),
        errorResponse: ErrorResponse.fromJson(json["errorResponse"]),
        count: json["count"],
        gridItemsCount: json["gridItemsCount"],
        catInfo: CatInfo.fromJson(json["catInfo"]),
        nonProduct: json["nonProduct"],
        pac: json["pac"],
        translation: json["translation"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "aggregatedCount": aggregatedCount,
        "debug": debug.toJson(),
        "itemStacks": List<dynamic>.from(itemStacks.map((x) => x.toJson())),
        "pageMetadata": pageMetadata.toJson(),
        "paginationV2": paginationV2.toJson(),
        "spelling": spelling.toJson(),
        "requestContext": requestContext.toJson(),
        "errorResponse": errorResponse.toJson(),
        "count": count,
        "gridItemsCount": gridItemsCount,
        "catInfo": catInfo.toJson(),
        "nonProduct": nonProduct,
        "pac": pac,
        "translation": translation,
      };
}

class CatInfo {
  CatInfo({
    required this.name,
    required this.catId,
  });

  String name;
  String catId;

  factory CatInfo.fromJson(Map<String, dynamic> json) => CatInfo(
        name: json["name"],
        catId: json["catId"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "catId": catId,
      };
}

class Debug {
  Debug({
    required this.sisUrl,
    required this.adsUrl,
  });

  String sisUrl;
  String adsUrl;

  factory Debug.fromJson(Map<String, dynamic> json) => Debug(
        sisUrl: json["sisUrl"],
        adsUrl: json["adsUrl"],
      );

  Map<String, dynamic> toJson() => {
        "sisUrl": sisUrl,
        "adsUrl": adsUrl,
      };
}

class ErrorResponse {
  ErrorResponse({
    required this.correlationId,
    required this.source,
    required this.errors,
    this.errorCodes,
  });

  String correlationId;
  String source;
  List<dynamic> errors;
  dynamic errorCodes;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
        correlationId: json["correlationId"],
        source: json["source"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
        errorCodes: json["errorCodes"],
      );

  Map<String, dynamic> toJson() => {
        "correlationId": correlationId,
        "source": source,
        "errors": List<dynamic>.from(errors.map((x) => x)),
        "errorCodes": errorCodes,
      };
}

class ItemStackElement {
  ItemStackElement({
    required this.meta,
    required this.title,
    required this.totalItemCountDisplay,
    required this.count,
    required this.items,
    required this.layoutEnum,
  });

  Meta meta;
  String title;
  String totalItemCountDisplay;
  int count;
  List<ItemElement> items;
  String layoutEnum;

  factory ItemStackElement.fromJson(Map<String, dynamic> json) =>
      ItemStackElement(
        meta: Meta.fromJson(json["meta"]),
        title: json["title"],
        totalItemCountDisplay: json["totalItemCountDisplay"],
        count: json["count"],
        items: List<ItemElement>.from(
            json["items"].map((x) => ItemElement.fromJson(x))),
        layoutEnum: json["layoutEnum"],
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "title": title,
        "totalItemCountDisplay": totalItemCountDisplay,
        "count": count,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "layoutEnum": layoutEnum,
      };
}

class ItemElement {
  ItemElement({
    required this.typename,
    required this.availabilityStatusDisplayValue,
    required this.externalInfoUrl,
    required this.canonicalUrl,
    required this.canAddToCart,
    required this.showOptions,
    required this.description,
    required this.flag,
    required this.fulfillmentBadges,
    this.fulfillmentSpeed,
    required this.fulfillmentType,
    required this.id,
    required this.usItemId,
    required this.image,
    required this.isOutOfStock,
    required this.name,
    required this.price,
    required this.preOrder,
    required this.priceInfo,
    required this.rating,
    required this.salesUnit,
    required this.variantList,
    required this.isVariantTypeSwatch,
    required this.offerId,
    required this.isAtfMarker,
    required this.sellerId,
    required this.sellerName,
    required this.seeShippingEligibility,
    this.itemType,
    this.topResult,
    this.quickShop,
    required this.aspectInfo,
    this.externalInfo,
    this.numberOfReviews,
    required this.imageInfo,
    required this.variantCriteria,
    this.productLocation,
    required this.subscription,
    required this.type,
    required this.salesUnitType,
    required this.specialBuy,
    this.pac,
    required this.priceFlip,
    required this.isSponsoredFlag,
    this.averageRating,
    required this.earlyAccessEvent,
    required this.arExperiences,
    this.fulfillmentIcon,
    required this.groupMetaData,
    required this.hasCarePlans,
    required this.imageSize,
    required this.petRx,
    this.quickShopCtaLabel,
    required this.checkStoreAvailabilityAtc,
    required this.eventAttributes,
    required this.showAtc,
    required this.similarItems,
    this.fulfillmentBadgeGroups,
    required this.weightIncrement,
    required this.annualEvent,
    required this.shortDescription,
    required this.isEarlyAccessItem,
    required this.badges,
    required this.fulfillmentTitle,
    required this.buyBoxSuppression,
    required this.vision,
    required this.badge,
    required this.snapEligible,
    required this.showBuyNow,
    required this.availabilityStatusV2,
    required this.category,
    required this.classType,
    required this.annualEventV2,
    this.rewards,
    required this.shouldLazyLoad,
    this.displayName,
  });

  ItemTypename typename;
  AvailabilityStatusDisplayValue availabilityStatusDisplayValue;
  String externalInfoUrl;
  String canonicalUrl;
  bool canAddToCart;
  bool showOptions;
  String description;
  Flag flag;
  List<FulfillmentBadge> fulfillmentBadges;
  List<FulfillmentSpeed>? fulfillmentSpeed;
  FulfillmentType fulfillmentType;
  String id;
  String usItemId;
  String image;
  bool isOutOfStock;
  String name;
  int price;
  PreOrder preOrder;
  PriceInfo priceInfo;
  Rating rating;
  SalesUnit salesUnit;
  List<ItemVariantList> variantList;
  bool isVariantTypeSwatch;
  String offerId;
  bool isAtfMarker;
  String sellerId;
  String sellerName;
  bool seeShippingEligibility;
  dynamic itemType;
  dynamic topResult;
  dynamic quickShop;
  AspectInfo aspectInfo;
  dynamic externalInfo;
  int? numberOfReviews;
  ImageInfo imageInfo;
  List<VariantCriterion> variantCriteria;
  dynamic productLocation;
  Subscription subscription;
  ClassTypeEnum type;
  SalesUnit salesUnitType;
  bool specialBuy;
  dynamic pac;
  bool priceFlip;
  bool isSponsoredFlag;
  double? averageRating;
  bool earlyAccessEvent;
  ArExperiences arExperiences;
  FulfillmentIcon? fulfillmentIcon;
  GroupMetaData groupMetaData;
  bool hasCarePlans;
  Size imageSize;
  PetRx petRx;
  dynamic quickShopCtaLabel;
  bool checkStoreAvailabilityAtc;
  EventAttributes eventAttributes;
  bool showAtc;
  bool similarItems;
  dynamic fulfillmentBadgeGroups;
  int weightIncrement;
  bool annualEvent;
  String shortDescription;
  bool isEarlyAccessItem;
  Badges badges;
  FulfillmentTitle fulfillmentTitle;
  bool buyBoxSuppression;
  Vision vision;
  Badge badge;
  bool snapEligible;
  bool showBuyNow;
  AvailabilityStatusV2 availabilityStatusV2;
  Category category;
  ClassTypeEnum classType;
  bool annualEventV2;
  dynamic rewards;
  bool shouldLazyLoad;
  DisplayName? displayName;

  factory ItemElement.fromJson(Map<String, dynamic> json) => ItemElement(
        typename: itemTypenameValues.map[json["__typename"]]!,
        availabilityStatusDisplayValue: availabilityStatusDisplayValueValues
            .map[json["availabilityStatusDisplayValue"]]!,
        externalInfoUrl: json["externalInfoUrl"],
        canonicalUrl: json["canonicalUrl"],
        canAddToCart: json["canAddToCart"],
        showOptions: json["showOptions"],
        description: json["description"],
        flag: flagValues.map[json["flag"]]!,
        fulfillmentBadges: List<FulfillmentBadge>.from(json["fulfillmentBadges"]
            .map((x) => fulfillmentBadgeValues.map[x]!)),
        fulfillmentSpeed: json["fulfillmentSpeed"] == null
            ? []
            : List<FulfillmentSpeed>.from(json["fulfillmentSpeed"]!
                .map((x) => fulfillmentSpeedValues.map[x]!)),
        fulfillmentType: fulfillmentTypeValues.map[json["fulfillmentType"]]!,
        id: json["id"],
        usItemId: json["usItemId"],
        image: json["image"],
        isOutOfStock: json["isOutOfStock"],
        name: json["name"],
        price: json["price"],
        preOrder: PreOrder.fromJson(json["preOrder"]),
        priceInfo: PriceInfo.fromJson(json["priceInfo"]),
        rating: Rating.fromJson(json["rating"]),
        salesUnit: salesUnitValues.map[json["salesUnit"]]!,
        variantList: List<ItemVariantList>.from(
            json["variantList"].map((x) => ItemVariantList.fromJson(x))),
        isVariantTypeSwatch: json["isVariantTypeSwatch"],
        offerId: json["offerId"],
        isAtfMarker: json["isAtfMarker"],
        sellerId: json["sellerId"],
        sellerName: json["sellerName"],
        seeShippingEligibility: json["seeShippingEligibility"],
        itemType: json["itemType"],
        topResult: json["topResult"],
        quickShop: json["quickShop"],
        aspectInfo: AspectInfo.fromJson(json["aspectInfo"]),
        externalInfo: json["externalInfo"],
        numberOfReviews: json["numberOfReviews"],
        imageInfo: ImageInfo.fromJson(json["imageInfo"]),
        variantCriteria: List<VariantCriterion>.from(
            json["variantCriteria"].map((x) => VariantCriterion.fromJson(x))),
        productLocation: json["productLocation"],
        subscription: Subscription.fromJson(json["subscription"]),
        type: classTypeEnumValues.map[json["type"]]!,
        salesUnitType: salesUnitValues.map[json["salesUnitType"]]!,
        specialBuy: json["specialBuy"],
        pac: json["pac"],
        priceFlip: json["priceFlip"],
        isSponsoredFlag: json["isSponsoredFlag"],
        averageRating: json["averageRating"]?.toDouble(),
        earlyAccessEvent: json["earlyAccessEvent"],
        arExperiences: ArExperiences.fromJson(json["arExperiences"]),
        fulfillmentIcon: json["fulfillmentIcon"] == null
            ? null
            : FulfillmentIcon.fromJson(json["fulfillmentIcon"]),
        groupMetaData: GroupMetaData.fromJson(json["groupMetaData"]),
        hasCarePlans: json["hasCarePlans"],
        imageSize: sizeValues.map[json["imageSize"]]!,
        petRx: PetRx.fromJson(json["petRx"]),
        quickShopCtaLabel: json["quickShopCTALabel"],
        checkStoreAvailabilityAtc: json["checkStoreAvailabilityATC"],
        eventAttributes: EventAttributes.fromJson(json["eventAttributes"]),
        showAtc: json["showAtc"],
        similarItems: json["similarItems"],
        fulfillmentBadgeGroups: json["fulfillmentBadgeGroups"],
        weightIncrement: json["weightIncrement"],
        annualEvent: json["annualEvent"],
        shortDescription: json["shortDescription"],
        isEarlyAccessItem: json["isEarlyAccessItem"],
        badges: Badges.fromJson(json["badges"]),
        fulfillmentTitle: fulfillmentTitleValues.map[json["fulfillmentTitle"]]!,
        buyBoxSuppression: json["buyBoxSuppression"],
        vision: Vision.fromJson(json["vision"]),
        badge: Badge.fromJson(json["badge"]),
        snapEligible: json["snapEligible"],
        showBuyNow: json["showBuyNow"],
        availabilityStatusV2:
            AvailabilityStatusV2.fromJson(json["availabilityStatusV2"]),
        category: Category.fromJson(json["category"]),
        classType: classTypeEnumValues.map[json["classType"]]!,
        annualEventV2: json["annualEventV2"],
        rewards: json["rewards"],
        shouldLazyLoad: json["shouldLazyLoad"],
        displayName: displayNameValues.map[json["displayName"]]!,
      );

  Map<String, dynamic> toJson() => {
        "__typename": itemTypenameValues.reverse[typename],
        "availabilityStatusDisplayValue": availabilityStatusDisplayValueValues
            .reverse[availabilityStatusDisplayValue],
        "externalInfoUrl": externalInfoUrl,
        "canonicalUrl": canonicalUrl,
        "canAddToCart": canAddToCart,
        "showOptions": showOptions,
        "description": description,
        "flag": flagValues.reverse[flag],
        "fulfillmentBadges": List<dynamic>.from(
            fulfillmentBadges.map((x) => fulfillmentBadgeValues.reverse[x])),
        "fulfillmentSpeed": fulfillmentSpeed == null
            ? []
            : List<dynamic>.from(fulfillmentSpeed!
                .map((x) => fulfillmentSpeedValues.reverse[x])),
        "fulfillmentType": fulfillmentTypeValues.reverse[fulfillmentType],
        "id": id,
        "usItemId": usItemId,
        "image": image,
        "isOutOfStock": isOutOfStock,
        "name": name,
        "price": price,
        "preOrder": preOrder.toJson(),
        "priceInfo": priceInfo.toJson(),
        "rating": rating.toJson(),
        "salesUnit": salesUnitValues.reverse[salesUnit],
        "variantList": List<dynamic>.from(variantList.map((x) => x.toJson())),
        "isVariantTypeSwatch": isVariantTypeSwatch,
        "offerId": offerId,
        "isAtfMarker": isAtfMarker,
        "sellerId": sellerId,
        "sellerName": sellerName,
        "seeShippingEligibility": seeShippingEligibility,
        "itemType": itemType,
        "topResult": topResult,
        "quickShop": quickShop,
        "aspectInfo": aspectInfo.toJson(),
        "externalInfo": externalInfo,
        "numberOfReviews": numberOfReviews,
        "imageInfo": imageInfo.toJson(),
        "variantCriteria":
            List<dynamic>.from(variantCriteria.map((x) => x.toJson())),
        "productLocation": productLocation,
        "subscription": subscription.toJson(),
        "type": classTypeEnumValues.reverse[type],
        "salesUnitType": salesUnitValues.reverse[salesUnitType],
        "specialBuy": specialBuy,
        "pac": pac,
        "priceFlip": priceFlip,
        "isSponsoredFlag": isSponsoredFlag,
        "averageRating": averageRating,
        "earlyAccessEvent": earlyAccessEvent,
        "arExperiences": arExperiences.toJson(),
        "fulfillmentIcon": fulfillmentIcon?.toJson(),
        "groupMetaData": groupMetaData.toJson(),
        "hasCarePlans": hasCarePlans,
        "imageSize": sizeValues.reverse[imageSize],
        "petRx": petRx.toJson(),
        "quickShopCTALabel": quickShopCtaLabel,
        "checkStoreAvailabilityATC": checkStoreAvailabilityAtc,
        "eventAttributes": eventAttributes.toJson(),
        "showAtc": showAtc,
        "similarItems": similarItems,
        "fulfillmentBadgeGroups": fulfillmentBadgeGroups,
        "weightIncrement": weightIncrement,
        "annualEvent": annualEvent,
        "shortDescription": shortDescription,
        "isEarlyAccessItem": isEarlyAccessItem,
        "badges": badges.toJson(),
        "fulfillmentTitle": fulfillmentTitleValues.reverse[fulfillmentTitle],
        "buyBoxSuppression": buyBoxSuppression,
        "vision": vision.toJson(),
        "badge": badge.toJson(),
        "snapEligible": snapEligible,
        "showBuyNow": showBuyNow,
        "availabilityStatusV2": availabilityStatusV2.toJson(),
        "category": category.toJson(),
        "classType": classTypeEnumValues.reverse[classType],
        "annualEventV2": annualEventV2,
        "rewards": rewards,
        "shouldLazyLoad": shouldLazyLoad,
        "displayName": displayNameValues.reverse[displayName],
      };
}

class ArExperiences {
  ArExperiences({
    required this.isArHome,
    required this.isZeekit,
  });

  bool isArHome;
  bool isZeekit;

  factory ArExperiences.fromJson(Map<String, dynamic> json) => ArExperiences(
        isArHome: json["isARHome"],
        isZeekit: json["isZeekit"],
      );

  Map<String, dynamic> toJson() => {
        "isARHome": isArHome,
        "isZeekit": isZeekit,
      };
}

class AspectInfo {
  AspectInfo({
    this.name,
    this.header,
    this.id,
    this.snippet,
  });

  dynamic name;
  dynamic header;
  dynamic id;
  dynamic snippet;

  factory AspectInfo.fromJson(Map<String, dynamic> json) => AspectInfo(
        name: json["name"],
        header: json["header"],
        id: json["id"],
        snippet: json["snippet"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "header": header,
        "id": id,
        "snippet": snippet,
      };
}

enum AvailabilityStatusDisplayValue { IN_STOCK, OUT_OF_STOCK }

final availabilityStatusDisplayValueValues = EnumValues({
  "In stock": AvailabilityStatusDisplayValue.IN_STOCK,
  "Out of stock": AvailabilityStatusDisplayValue.OUT_OF_STOCK
});

class AvailabilityStatusV2 {
  AvailabilityStatusV2({
    required this.display,
    required this.value,
  });

  AvailabilityStatusDisplayValue display;
  ValueEnum value;

  factory AvailabilityStatusV2.fromJson(Map<String, dynamic> json) =>
      AvailabilityStatusV2(
        display: availabilityStatusDisplayValueValues.map[json["display"]]!,
        value: valueEnumValues.map[json["value"]]!,
      );

  Map<String, dynamic> toJson() => {
        "display": availabilityStatusDisplayValueValues.reverse[display],
        "value": valueEnumValues.reverse[value],
      };
}

enum ValueEnum { IN_STOCK, OUT_OF_STOCK }

final valueEnumValues = EnumValues(
    {"IN_STOCK": ValueEnum.IN_STOCK, "OUT_OF_STOCK": ValueEnum.OUT_OF_STOCK});

class Badge {
  Badge({
    required this.text,
    required this.id,
    required this.type,
    required this.key,
    this.typename,
    this.styleId,
  });

  Flag text;
  Id id;
  BadgeType type;
  BadgeKey key;
  BadgeTypename? typename;
  dynamic styleId;

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        text: flagValues.map[json["text"]]!,
        id: idValues.map[json["id"]]!,
        type: badgeTypeValues.map[json["type"]]!,
        key: badgeKeyValues.map[json["key"]]!,
        typename: badgeTypenameValues.map[json["__typename"]]!,
        styleId: json["styleId"],
      );

  Map<String, dynamic> toJson() => {
        "text": flagValues.reverse[text],
        "id": idValues.reverse[id],
        "type": badgeTypeValues.reverse[type],
        "key": badgeKeyValues.reverse[key],
        "__typename": badgeTypenameValues.reverse[typename],
        "styleId": styleId,
      };
}

enum Id { EMPTY, L1600, L1300, L1102, L1400 }

final idValues = EnumValues({
  "": Id.EMPTY,
  "L1102": Id.L1102,
  "L1300": Id.L1300,
  "L1400": Id.L1400,
  "L1600": Id.L1600
});

enum BadgeKey {
  EMPTY,
  BESTSELLER,
  ROLLBACK,
  SOCIAL_PROOF_PURCHASES_FLAG,
  CLEARANCE
}

final badgeKeyValues = EnumValues({
  "BESTSELLER": BadgeKey.BESTSELLER,
  "CLEARANCE": BadgeKey.CLEARANCE,
  "": BadgeKey.EMPTY,
  "ROLLBACK": BadgeKey.ROLLBACK,
  "SOCIAL_PROOF_PURCHASES_FLAG": BadgeKey.SOCIAL_PROOF_PURCHASES_FLAG
});

enum Flag {
  EMPTY,
  BEST_SELLER,
  ROLLBACK,
  THE_100_BOUGHT_SINCE_YESTERDAY,
  CLEARANCE
}

final flagValues = EnumValues({
  "Best seller": Flag.BEST_SELLER,
  "Clearance": Flag.CLEARANCE,
  "": Flag.EMPTY,
  "Rollback": Flag.ROLLBACK,
  "100+ bought since yesterday": Flag.THE_100_BOUGHT_SINCE_YESTERDAY
});

enum BadgeType { EMPTY, LABEL }

final badgeTypeValues =
    EnumValues({"": BadgeType.EMPTY, "LABEL": BadgeType.LABEL});

enum BadgeTypename { BASE_BADGE }

final badgeTypenameValues = EnumValues({"BaseBadge": BadgeTypename.BASE_BADGE});

class Badges {
  Badges({
    this.flags,
    required this.tags,
    required this.groups,
  });

  List<Badge>? flags;
  List<Tag> tags;
  List<dynamic> groups;

  factory Badges.fromJson(Map<String, dynamic> json) => Badges(
        flags: json["flags"] == null
            ? []
            : List<Badge>.from(json["flags"]!.map((x) => Badge.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        groups: List<dynamic>.from(json["groups"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "flags": flags == null
            ? []
            : List<dynamic>.from(flags!.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "groups": List<dynamic>.from(groups.map((x) => x)),
      };
}

class Tag {
  Tag({
    required this.typename,
    required this.key,
    required this.text,
    required this.type,
  });

  BadgeTypename typename;
  TagKey key;
  FulfillmentBadge text;
  TagType type;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        typename: badgeTypenameValues.map[json["__typename"]]!,
        key: tagKeyValues.map[json["key"]]!,
        text: fulfillmentBadgeValues.map[json["text"]]!,
        type: tagTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "__typename": badgeTypenameValues.reverse[typename],
        "key": tagKeyValues.reverse[key],
        "text": fulfillmentBadgeValues.reverse[text],
        "type": tagTypeValues.reverse[type],
      };
}

enum TagKey {
  PICKUP,
  DELIVERY,
  SAVE_WITH_W_PLUS,
  THREE_PLUS_DAY_SHIPPING,
  TWO_DAY_SHIPPING
}

final tagKeyValues = EnumValues({
  "DELIVERY": TagKey.DELIVERY,
  "PICKUP": TagKey.PICKUP,
  "SAVE_WITH_W_PLUS": TagKey.SAVE_WITH_W_PLUS,
  "THREE_PLUS_DAY_SHIPPING": TagKey.THREE_PLUS_DAY_SHIPPING,
  "TWO_DAY_SHIPPING": TagKey.TWO_DAY_SHIPPING
});

enum FulfillmentBadge {
  PICKUP,
  DELIVERY,
  SAVE_WITH,
  THE_3_DAY_SHIPPING,
  THE_2_DAY_SHIPPING
}

final fulfillmentBadgeValues = EnumValues({
  "Delivery": FulfillmentBadge.DELIVERY,
  "Pickup": FulfillmentBadge.PICKUP,
  "Save with": FulfillmentBadge.SAVE_WITH,
  "2-day shipping": FulfillmentBadge.THE_2_DAY_SHIPPING,
  "3+ day shipping": FulfillmentBadge.THE_3_DAY_SHIPPING
});

enum TagType { LABEL, ICON }

final tagTypeValues =
    EnumValues({"ICON": TagType.ICON, "LABEL": TagType.LABEL});

class Category {
  Category({
    this.path,
  });

  dynamic path;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "path": path,
      };
}

enum ClassTypeEnum { REGULAR, VARIANT }

final classTypeEnumValues = EnumValues(
    {"REGULAR": ClassTypeEnum.REGULAR, "VARIANT": ClassTypeEnum.VARIANT});

enum DisplayName { SIZES, OPTIONS }

final displayNameValues =
    EnumValues({"options": DisplayName.OPTIONS, "sizes": DisplayName.SIZES});

class EventAttributes {
  EventAttributes({
    required this.priceFlip,
    required this.specialBuy,
  });

  bool priceFlip;
  bool specialBuy;

  factory EventAttributes.fromJson(Map<String, dynamic> json) =>
      EventAttributes(
        priceFlip: json["priceFlip"],
        specialBuy: json["specialBuy"],
      );

  Map<String, dynamic> toJson() => {
        "priceFlip": priceFlip,
        "specialBuy": specialBuy,
      };
}

class FulfillmentIcon {
  FulfillmentIcon({
    required this.key,
    required this.label,
  });

  TagKey key;
  FulfillmentBadge label;

  factory FulfillmentIcon.fromJson(Map<String, dynamic> json) =>
      FulfillmentIcon(
        key: tagKeyValues.map[json["key"]]!,
        label: fulfillmentBadgeValues.map[json["label"]]!,
      );

  Map<String, dynamic> toJson() => {
        "key": tagKeyValues.reverse[key],
        "label": fulfillmentBadgeValues.reverse[label],
      };
}

enum FulfillmentSpeed { TOMORROW, THE_2_DAYS }

final fulfillmentSpeedValues = EnumValues({
  "2 days": FulfillmentSpeed.THE_2_DAYS,
  "TOMORROW": FulfillmentSpeed.TOMORROW
});

enum FulfillmentTitle {
  TITLE_STORE_NOT_AVAILABLE,
  TITLE_SHIP_TO_HOME_NOT_AVAILABLE
}

final fulfillmentTitleValues = EnumValues({
  "title_shipToHome_not_available":
      FulfillmentTitle.TITLE_SHIP_TO_HOME_NOT_AVAILABLE,
  "title_store_not_available": FulfillmentTitle.TITLE_STORE_NOT_AVAILABLE
});

enum FulfillmentType { STORE, MARKETPLACE, FC }

final fulfillmentTypeValues = EnumValues({
  "FC": FulfillmentType.FC,
  "MARKETPLACE": FulfillmentType.MARKETPLACE,
  "STORE": FulfillmentType.STORE
});

class GroupMetaData {
  GroupMetaData({
    this.groupType,
    this.groupSubType,
    required this.numberOfComponents,
    this.groupComponents,
  });

  dynamic groupType;
  dynamic groupSubType;
  int numberOfComponents;
  dynamic groupComponents;

  factory GroupMetaData.fromJson(Map<String, dynamic> json) => GroupMetaData(
        groupType: json["groupType"],
        groupSubType: json["groupSubType"],
        numberOfComponents: json["numberOfComponents"],
        groupComponents: json["groupComponents"],
      );

  Map<String, dynamic> toJson() => {
        "groupType": groupType,
        "groupSubType": groupSubType,
        "numberOfComponents": numberOfComponents,
        "groupComponents": groupComponents,
      };
}

class ImageInfo {
  ImageInfo({
    required this.thumbnailUrl,
    required this.size,
  });

  String thumbnailUrl;
  Size size;

  factory ImageInfo.fromJson(Map<String, dynamic> json) => ImageInfo(
        thumbnailUrl: json["thumbnailUrl"],
        size: sizeValues.map[json["size"]]!,
      );

  Map<String, dynamic> toJson() => {
        "thumbnailUrl": thumbnailUrl,
        "size": sizeValues.reverse[size],
      };
}

enum Size { THE_290392 }

final sizeValues = EnumValues({"290-392": Size.THE_290392});

class PetRx {
  PetRx({
    required this.eligible,
    this.singleDispense,
  });

  bool eligible;
  dynamic singleDispense;

  factory PetRx.fromJson(Map<String, dynamic> json) => PetRx(
        eligible: json["eligible"],
        singleDispense: json["singleDispense"],
      );

  Map<String, dynamic> toJson() => {
        "eligible": eligible,
        "singleDispense": singleDispense,
      };
}

class PreOrder {
  PreOrder({
    required this.isPreOrder,
    this.streetDateDisplayable,
    this.streetDateType,
    this.streetDate,
  });

  bool isPreOrder;
  dynamic streetDateDisplayable;
  dynamic streetDateType;
  dynamic streetDate;

  factory PreOrder.fromJson(Map<String, dynamic> json) => PreOrder(
        isPreOrder: json["isPreOrder"],
        streetDateDisplayable: json["streetDateDisplayable"],
        streetDateType: json["streetDateType"],
        streetDate: json["streetDate"],
      );

  Map<String, dynamic> toJson() => {
        "isPreOrder": isPreOrder,
        "streetDateDisplayable": streetDateDisplayable,
        "streetDateType": streetDateType,
        "streetDate": streetDate,
      };
}

class PriceInfo {
  PriceInfo({
    required this.itemPrice,
    required this.linePrice,
    required this.wasPrice,
    required this.unitPrice,
    required this.shipPrice,
    required this.minPriceForVariant,
    required this.subscriptionPrice,
    required this.subscriptionString,
    required this.priceDisplayCondition,
    required this.finalCostByWeight,
    required this.submapType,
    required this.priceRangeString,
    required this.linePriceDisplay,
    required this.eaPricingPreText,
    required this.memberPriceString,
    this.subscriptionPercentage,
    required this.minPrice,
    required this.savings,
    this.subscriptionDualPrice,
    required this.eaPricingText,
  });

  String itemPrice;
  String linePrice;
  String wasPrice;
  UnitPrice unitPrice;
  String shipPrice;
  String minPriceForVariant;
  String subscriptionPrice;
  String subscriptionString;
  String priceDisplayCondition;
  bool finalCostByWeight;
  String submapType;
  String priceRangeString;
  String linePriceDisplay;
  String eaPricingPreText;
  String memberPriceString;
  int? subscriptionPercentage;
  double minPrice;
  String savings;
  dynamic subscriptionDualPrice;
  String eaPricingText;

  factory PriceInfo.fromJson(Map<String, dynamic> json) => PriceInfo(
        itemPrice: json["itemPrice"],
        linePrice: json["linePrice"],
        wasPrice: json["wasPrice"],
        unitPrice: unitPriceValues.map[json["unitPrice"]]!,
        shipPrice: json["shipPrice"],
        minPriceForVariant: json["minPriceForVariant"],
        subscriptionPrice: json["subscriptionPrice"],
        subscriptionString: json["subscriptionString"],
        priceDisplayCondition: json["priceDisplayCondition"],
        finalCostByWeight: json["finalCostByWeight"],
        submapType: json["submapType"],
        priceRangeString: json["priceRangeString"],
        linePriceDisplay: json["linePriceDisplay"],
        eaPricingPreText: json["eaPricingPreText"],
        memberPriceString: json["memberPriceString"],
        subscriptionPercentage: json["subscriptionPercentage"],
        minPrice: json["minPrice"]?.toDouble(),
        savings: json["savings"],
        subscriptionDualPrice: json["subscriptionDualPrice"],
        eaPricingText: json["eaPricingText"],
      );

  Map<String, dynamic> toJson() => {
        "itemPrice": itemPrice,
        "linePrice": linePrice,
        "wasPrice": wasPrice,
        "unitPrice": unitPriceValues.reverse[unitPrice],
        "shipPrice": shipPrice,
        "minPriceForVariant": minPriceForVariant,
        "subscriptionPrice": subscriptionPrice,
        "subscriptionString": subscriptionString,
        "priceDisplayCondition": priceDisplayCondition,
        "finalCostByWeight": finalCostByWeight,
        "submapType": submapType,
        "priceRangeString": priceRangeString,
        "linePriceDisplay": linePriceDisplay,
        "eaPricingPreText": eaPricingPreText,
        "memberPriceString": memberPriceString,
        "subscriptionPercentage": subscriptionPercentage,
        "minPrice": minPrice,
        "savings": savings,
        "subscriptionDualPrice": subscriptionDualPrice,
        "eaPricingText": eaPricingText,
      };
}

enum UnitPrice { THE_442_OZ, THE_298_OZ, EMPTY, THE_2599_FL_OZ, THE_23991 }

final unitPriceValues = EnumValues({
  "": UnitPrice.EMPTY,
  "\u002423.99/1": UnitPrice.THE_23991,
  "\u002425.99/fl oz": UnitPrice.THE_2599_FL_OZ,
  "29.8 ¢/oz": UnitPrice.THE_298_OZ,
  "44.2 ¢/oz": UnitPrice.THE_442_OZ
});

class Rating {
  Rating({
    required this.averageRating,
    required this.numberOfReviews,
  });

  int averageRating;
  int numberOfReviews;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        averageRating: json["averageRating"],
        numberOfReviews: json["numberOfReviews"],
      );

  Map<String, dynamic> toJson() => {
        "averageRating": averageRating,
        "numberOfReviews": numberOfReviews,
      };
}

enum SalesUnit { EACH }

final salesUnitValues = EnumValues({"EACH": SalesUnit.EACH});

class Subscription {
  Subscription({
    required this.typename,
    required this.subscriptionEligible,
  });

  SubscriptionTypename typename;
  bool subscriptionEligible;

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        typename: subscriptionTypenameValues.map[json["__typename"]]!,
        subscriptionEligible: json["subscriptionEligible"],
      );

  Map<String, dynamic> toJson() => {
        "__typename": subscriptionTypenameValues.reverse[typename],
        "subscriptionEligible": subscriptionEligible,
      };
}

enum SubscriptionTypename { SUBSCRIPTION_DATA }

final subscriptionTypenameValues =
    EnumValues({"SubscriptionData": SubscriptionTypename.SUBSCRIPTION_DATA});

enum ItemTypename { PRODUCT }

final itemTypenameValues = EnumValues({"Product": ItemTypename.PRODUCT});

class VariantCriterion {
  VariantCriterion({
    required this.name,
    required this.type,
    this.id,
    required this.displayName,
    required this.isVariantTypeSwatch,
    required this.variantList,
  });

  String name;
  StackTypeEnum type;
  dynamic id;
  DisplayName displayName;
  bool isVariantTypeSwatch;
  List<VariantCriterionVariantList> variantList;

  factory VariantCriterion.fromJson(Map<String, dynamic> json) =>
      VariantCriterion(
        name: json["name"],
        type: stackTypeEnumValues.map[json["type"]]!,
        id: json["id"],
        displayName: displayNameValues.map[json["displayName"]]!,
        isVariantTypeSwatch: json["isVariantTypeSwatch"],
        variantList: List<VariantCriterionVariantList>.from(json["variantList"]
            .map((x) => VariantCriterionVariantList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": stackTypeEnumValues.reverse[type],
        "id": id,
        "displayName": displayNameValues.reverse[displayName],
        "isVariantTypeSwatch": isVariantTypeSwatch,
        "variantList": List<dynamic>.from(variantList.map((x) => x.toJson())),
      };
}

enum StackTypeEnum { LOCATOR, DEFAULT }

final stackTypeEnumValues = EnumValues(
    {"DEFAULT": StackTypeEnum.DEFAULT, "LOCATOR": StackTypeEnum.LOCATOR});

class VariantCriterionVariantList {
  VariantCriterionVariantList({
    this.id,
    required this.images,
    required this.name,
    required this.rank,
    this.swatchImageUrl,
    required this.availabilityStatus,
    required this.products,
    required this.selectedProduct,
  });

  dynamic id;
  List<String> images;
  String name;
  int rank;
  String? swatchImageUrl;
  AvailabilityStatus availabilityStatus;
  List<String> products;
  SelectedProduct selectedProduct;

  factory VariantCriterionVariantList.fromJson(Map<String, dynamic> json) =>
      VariantCriterionVariantList(
        id: json["id"],
        images: List<String>.from(json["images"].map((x) => x)),
        name: json["name"],
        rank: json["rank"],
        swatchImageUrl: json["swatchImageUrl"],
        availabilityStatus:
            availabilityStatusValues.map[json["availabilityStatus"]]!,
        products: List<String>.from(json["products"].map((x) => x)),
        selectedProduct: SelectedProduct.fromJson(json["selectedProduct"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "images": List<dynamic>.from(images.map((x) => x)),
        "name": name,
        "rank": rank,
        "swatchImageUrl": swatchImageUrl,
        "availabilityStatus":
            availabilityStatusValues.reverse[availabilityStatus],
        "products": List<dynamic>.from(products.map((x) => x)),
        "selectedProduct": selectedProduct.toJson(),
      };
}

enum AvailabilityStatus { AVAILABLE, NOT_AVAILABLE }

final availabilityStatusValues = EnumValues({
  "AVAILABLE": AvailabilityStatus.AVAILABLE,
  "NOT_AVAILABLE": AvailabilityStatus.NOT_AVAILABLE
});

class SelectedProduct {
  SelectedProduct({
    required this.canonicalUrl,
    required this.usItemId,
  });

  String canonicalUrl;
  String usItemId;

  factory SelectedProduct.fromJson(Map<String, dynamic> json) =>
      SelectedProduct(
        canonicalUrl: json["canonicalUrl"],
        usItemId: json["usItemId"],
      );

  Map<String, dynamic> toJson() => {
        "canonicalUrl": canonicalUrl,
        "usItemId": usItemId,
      };
}

class ItemVariantList {
  ItemVariantList({
    required this.name,
    required this.swatchImageUrl,
    required this.image,
    required this.productId,
    required this.usItemId,
    required this.canonicalUrl,
  });

  String name;
  String swatchImageUrl;
  String image;
  String productId;
  String usItemId;
  String canonicalUrl;

  factory ItemVariantList.fromJson(Map<String, dynamic> json) =>
      ItemVariantList(
        name: json["name"],
        swatchImageUrl: json["swatchImageUrl"],
        image: json["image"],
        productId: json["productId"],
        usItemId: json["usItemId"],
        canonicalUrl: json["canonicalUrl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "swatchImageUrl": swatchImageUrl,
        "image": image,
        "productId": productId,
        "usItemId": usItemId,
        "canonicalUrl": canonicalUrl,
      };
}

class Vision {
  Vision({
    this.ageGroup,
    required this.visionCenterApproved,
  });

  dynamic ageGroup;
  bool visionCenterApproved;

  factory Vision.fromJson(Map<String, dynamic> json) => Vision(
        ageGroup: json["ageGroup"],
        visionCenterApproved: json["visionCenterApproved"],
      );

  Map<String, dynamic> toJson() => {
        "ageGroup": ageGroup,
        "visionCenterApproved": visionCenterApproved,
      };
}

class Meta {
  Meta({
    required this.adsBeacon,
    required this.query,
    required this.stackId,
    required this.stackType,
    required this.title,
    required this.layoutEnum,
    required this.totalItemCount,
    required this.totalItemCountDisplay,
    this.borderColor,
    this.subTitle,
    this.stackName,
    this.iconUrl,
  });

  AdsBeacon adsBeacon;
  String query;
  int stackId;
  StackTypeEnum stackType;
  String title;
  String layoutEnum;
  int totalItemCount;
  String totalItemCountDisplay;
  dynamic borderColor;
  dynamic subTitle;
  dynamic stackName;
  dynamic iconUrl;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        adsBeacon: AdsBeacon.fromJson(json["adsBeacon"]),
        query: json["query"],
        stackId: json["stackId"],
        stackType: stackTypeEnumValues.map[json["stackType"]]!,
        title: json["title"],
        layoutEnum: json["layoutEnum"],
        totalItemCount: json["totalItemCount"],
        totalItemCountDisplay: json["totalItemCountDisplay"],
        borderColor: json["borderColor"],
        subTitle: json["subTitle"],
        stackName: json["stackName"],
        iconUrl: json["iconUrl"],
      );

  Map<String, dynamic> toJson() => {
        "adsBeacon": adsBeacon.toJson(),
        "query": query,
        "stackId": stackId,
        "stackType": stackTypeEnumValues.reverse[stackType],
        "title": title,
        "layoutEnum": layoutEnum,
        "totalItemCount": totalItemCount,
        "totalItemCountDisplay": totalItemCountDisplay,
        "borderColor": borderColor,
        "subTitle": subTitle,
        "stackName": stackName,
        "iconUrl": iconUrl,
      };
}

class AdsBeacon {
  AdsBeacon({
    required this.adUuid,
    required this.moduleInfo,
    required this.maxAds,
  });

  String adUuid;
  String moduleInfo;
  int maxAds;

  factory AdsBeacon.fromJson(Map<String, dynamic> json) => AdsBeacon(
        adUuid: json["adUuid"],
        moduleInfo: json["moduleInfo"],
        maxAds: json["max_ads"],
      );

  Map<String, dynamic> toJson() => {
        "adUuid": adUuid,
        "moduleInfo": moduleInfo,
        "max_ads": maxAds,
      };
}

class SearchResultPageMetadata {
  SearchResultPageMetadata({
    required this.title,
    this.storeSelectionHeader,
    required this.location,
    required this.subscriptionEligible,
  });

  String title;
  dynamic storeSelectionHeader;
  FluffyLocation location;
  bool subscriptionEligible;

  factory SearchResultPageMetadata.fromJson(Map<String, dynamic> json) =>
      SearchResultPageMetadata(
        title: json["title"],
        storeSelectionHeader: json["storeSelectionHeader"],
        location: FluffyLocation.fromJson(json["location"]),
        subscriptionEligible: json["subscriptionEligible"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "storeSelectionHeader": storeSelectionHeader,
        "location": location.toJson(),
        "subscriptionEligible": subscriptionEligible,
      };
}

class FluffyLocation {
  FluffyLocation({
    required this.addressId,
  });

  String addressId;

  factory FluffyLocation.fromJson(Map<String, dynamic> json) => FluffyLocation(
        addressId: json["addressId"],
      );

  Map<String, dynamic> toJson() => {
        "addressId": addressId,
      };
}

class PaginationV2 {
  PaginationV2({
    required this.maxPage,
    required this.pageProperties,
  });

  int maxPage;
  PageProperties pageProperties;

  factory PaginationV2.fromJson(Map<String, dynamic> json) => PaginationV2(
        maxPage: json["maxPage"],
        pageProperties: PageProperties.fromJson(json["pageProperties"]),
      );

  Map<String, dynamic> toJson() => {
        "maxPage": maxPage,
        "pageProperties": pageProperties.toJson(),
      };
}

class PageProperties {
  PageProperties({
    required this.ps,
    required this.spelling,
    required this.stores,
    required this.grid,
    required this.query,
    required this.catId,
    required this.sort,
    required this.displayGuidedNav,
    required this.affinityOverride,
    required this.ptss,
    required this.itemStacksInterleavePosition,
    required this.prg,
    required this.page,
    required this.itemStacks,
  });

  String ps;
  String spelling;
  String stores;
  String grid;
  String query;
  String catId;
  String sort;
  bool displayGuidedNav;
  AffinityOverride affinityOverride;
  String ptss;
  List<ItemStacksInterleavePosition> itemStacksInterleavePosition;
  String prg;
  int page;
  Map<String, ItemStackValue> itemStacks;

  factory PageProperties.fromJson(Map<String, dynamic> json) => PageProperties(
        ps: json["ps"],
        spelling: json["spelling"],
        stores: json["stores"],
        grid: json["grid"],
        query: json["query"],
        catId: json["cat_id"],
        sort: json["sort"],
        displayGuidedNav: json["displayGuidedNav"],
        affinityOverride: affinityOverrideValues.map[json["affinityOverride"]]!,
        ptss: json["ptss"],
        itemStacksInterleavePosition: List<ItemStacksInterleavePosition>.from(
            json["itemStacksInterleavePosition"]
                .map((x) => ItemStacksInterleavePosition.fromJson(x))),
        prg: json["prg"],
        page: json["page"],
        itemStacks: Map.from(json["itemStacks"]).map((k, v) =>
            MapEntry<String, ItemStackValue>(k, ItemStackValue.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "ps": ps,
        "spelling": spelling,
        "stores": stores,
        "grid": grid,
        "query": query,
        "cat_id": catId,
        "sort": sort,
        "displayGuidedNav": displayGuidedNav,
        "affinityOverride": affinityOverrideValues.reverse[affinityOverride],
        "ptss": ptss,
        "itemStacksInterleavePosition": List<dynamic>.from(
            itemStacksInterleavePosition.map((x) => x.toJson())),
        "prg": prg,
        "page": page,
        "itemStacks": Map.from(itemStacks)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class ItemStackValue {
  ItemStackValue({
    required this.usItemId,
  });

  String usItemId;

  factory ItemStackValue.fromJson(Map<String, dynamic> json) => ItemStackValue(
        usItemId: json["usItemId"],
      );

  Map<String, dynamic> toJson() => {
        "usItemId": usItemId,
      };
}

class ItemStacksInterleavePosition {
  ItemStacksInterleavePosition({
    required this.stackId,
  });

  int stackId;

  factory ItemStacksInterleavePosition.fromJson(Map<String, dynamic> json) =>
      ItemStacksInterleavePosition(
        stackId: json["stackId"],
      );

  Map<String, dynamic> toJson() => {
        "stackId": stackId,
      };
}

class RequestContext {
  RequestContext({
    required this.isFitmentFilterQueryApplied,
    required this.searchMatchType,
    required this.categories,
    required this.hasGicIntent,
    required this.vertical,
  });

  bool isFitmentFilterQueryApplied;
  String searchMatchType;
  Categories categories;
  bool hasGicIntent;
  String vertical;

  factory RequestContext.fromJson(Map<String, dynamic> json) => RequestContext(
        isFitmentFilterQueryApplied: json["isFitmentFilterQueryApplied"],
        searchMatchType: json["searchMatchType"],
        categories: Categories.fromJson(json["categories"]),
        hasGicIntent: json["hasGicIntent"],
        vertical: json["vertical"],
      );

  Map<String, dynamic> toJson() => {
        "isFitmentFilterQueryApplied": isFitmentFilterQueryApplied,
        "searchMatchType": searchMatchType,
        "categories": categories.toJson(),
        "hasGicIntent": hasGicIntent,
        "vertical": vertical,
      };
}

class Categories {
  Categories({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class InitialSearchQueryVariables {
  InitialSearchQueryVariables({
    required this.id,
    required this.dealsId,
    required this.query,
    required this.page,
    required this.prg,
    required this.facet,
    required this.sort,
    required this.rawFacet,
    required this.seoPath,
    required this.ps,
    required this.ptss,
    required this.trsp,
    required this.beShelfId,
    required this.recallSet,
    required this.moduleSearch,
    required this.minPrice,
    required this.maxPrice,
    required this.storeSlotBooked,
    required this.fitmentFieldParams,
    required this.fitmentSearchParams,
    required this.fetchMarquee,
    required this.fetchSkyline,
    required this.fetchSbaTop,
    required this.catId,
    required this.fetchGallery,
    required this.enableFashionTopNav,
    required this.enableFlattenedFitment,
    required this.enableRelatedSearches,
    required this.searchArgs,
    required this.enablePortableFacets,
    required this.additionalQueryParams,
    required this.tenant,
    required this.enableFacetCount,
  });

  String id;
  String dealsId;
  String query;
  int page;
  String prg;
  String facet;
  String sort;
  String rawFacet;
  String seoPath;
  int ps;
  String ptss;
  String trsp;
  String beShelfId;
  String recallSet;
  String moduleSearch;
  String minPrice;
  String maxPrice;
  String storeSlotBooked;
  FitmentFieldParams fitmentFieldParams;
  FitmentSearchParams fitmentSearchParams;
  bool fetchMarquee;
  bool fetchSkyline;
  bool fetchSbaTop;
  String catId;
  bool fetchGallery;
  bool enableFashionTopNav;
  bool enableFlattenedFitment;
  bool enableRelatedSearches;
  SearchArgs searchArgs;
  bool enablePortableFacets;
  AdditionalQueryParams additionalQueryParams;
  String tenant;
  bool enableFacetCount;

  factory InitialSearchQueryVariables.fromJson(Map<String, dynamic> json) =>
      InitialSearchQueryVariables(
        id: json["id"],
        dealsId: json["dealsId"],
        query: json["query"],
        page: json["page"],
        prg: json["prg"],
        facet: json["facet"],
        sort: json["sort"],
        rawFacet: json["rawFacet"],
        seoPath: json["seoPath"],
        ps: json["ps"],
        ptss: json["ptss"],
        trsp: json["trsp"],
        beShelfId: json["beShelfId"],
        recallSet: json["recall_set"],
        moduleSearch: json["module_search"],
        minPrice: json["min_price"],
        maxPrice: json["max_price"],
        storeSlotBooked: json["storeSlotBooked"],
        fitmentFieldParams:
            FitmentFieldParams.fromJson(json["fitmentFieldParams"]),
        fitmentSearchParams:
            FitmentSearchParams.fromJson(json["fitmentSearchParams"]),
        fetchMarquee: json["fetchMarquee"],
        fetchSkyline: json["fetchSkyline"],
        fetchSbaTop: json["fetchSbaTop"],
        catId: json["catId"],
        fetchGallery: json["fetchGallery"],
        enableFashionTopNav: json["enableFashionTopNav"],
        enableFlattenedFitment: json["enableFlattenedFitment"],
        enableRelatedSearches: json["enableRelatedSearches"],
        searchArgs: SearchArgs.fromJson(json["searchArgs"]),
        enablePortableFacets: json["enablePortableFacets"],
        additionalQueryParams:
            AdditionalQueryParams.fromJson(json["additionalQueryParams"]),
        tenant: json["tenant"],
        enableFacetCount: json["enableFacetCount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealsId": dealsId,
        "query": query,
        "page": page,
        "prg": prg,
        "facet": facet,
        "sort": sort,
        "rawFacet": rawFacet,
        "seoPath": seoPath,
        "ps": ps,
        "ptss": ptss,
        "trsp": trsp,
        "beShelfId": beShelfId,
        "recall_set": recallSet,
        "module_search": moduleSearch,
        "min_price": minPrice,
        "max_price": maxPrice,
        "storeSlotBooked": storeSlotBooked,
        "fitmentFieldParams": fitmentFieldParams.toJson(),
        "fitmentSearchParams": fitmentSearchParams.toJson(),
        "fetchMarquee": fetchMarquee,
        "fetchSkyline": fetchSkyline,
        "fetchSbaTop": fetchSbaTop,
        "catId": catId,
        "fetchGallery": fetchGallery,
        "enableFashionTopNav": enableFashionTopNav,
        "enableFlattenedFitment": enableFlattenedFitment,
        "enableRelatedSearches": enableRelatedSearches,
        "searchArgs": searchArgs.toJson(),
        "enablePortableFacets": enablePortableFacets,
        "additionalQueryParams": additionalQueryParams.toJson(),
        "tenant": tenant,
        "enableFacetCount": enableFacetCount,
      };
}

class AdditionalQueryParams {
  AdditionalQueryParams({
    this.hiddenFacet,
    this.translation,
    required this.isMoreOptionsTileEnabled,
  });

  dynamic hiddenFacet;
  dynamic translation;
  bool isMoreOptionsTileEnabled;

  factory AdditionalQueryParams.fromJson(Map<String, dynamic> json) =>
      AdditionalQueryParams(
        hiddenFacet: json["hidden_facet"],
        translation: json["translation"],
        isMoreOptionsTileEnabled: json["isMoreOptionsTileEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "hidden_facet": hiddenFacet,
        "translation": translation,
        "isMoreOptionsTileEnabled": isMoreOptionsTileEnabled,
      };
}

class FitmentFieldParams {
  FitmentFieldParams({
    required this.powerSportEnabled,
  });

  bool powerSportEnabled;

  factory FitmentFieldParams.fromJson(Map<String, dynamic> json) =>
      FitmentFieldParams(
        powerSportEnabled: json["powerSportEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "powerSportEnabled": powerSportEnabled,
      };
}

class FitmentSearchParams {
  FitmentSearchParams({
    required this.id,
    required this.dealsId,
    required this.query,
    required this.page,
    required this.prg,
    required this.facet,
    required this.sort,
    required this.rawFacet,
    required this.seoPath,
    required this.ps,
    required this.ptss,
    required this.trsp,
    required this.recallSet,
    required this.moduleSearch,
    required this.minPrice,
    required this.maxPrice,
    required this.storeSlotBooked,
    required this.fitmentSearchParamsCatId,
    required this.beShelfId,
    required this.catId,
    required this.fitmentSearchParamsBeShelfId,
    required this.searchArgs,
    required this.additionalQueryParams,
  });

  String id;
  String dealsId;
  String query;
  int page;
  String prg;
  String facet;
  String sort;
  String rawFacet;
  String seoPath;
  int ps;
  String ptss;
  String trsp;
  String recallSet;
  String moduleSearch;
  String minPrice;
  String maxPrice;
  String storeSlotBooked;
  String fitmentSearchParamsCatId;
  String beShelfId;
  String catId;
  String fitmentSearchParamsBeShelfId;
  SearchArgs searchArgs;
  AdditionalQueryParams additionalQueryParams;

  factory FitmentSearchParams.fromJson(Map<String, dynamic> json) =>
      FitmentSearchParams(
        id: json["id"],
        dealsId: json["dealsId"],
        query: json["query"],
        page: json["page"],
        prg: json["prg"],
        facet: json["facet"],
        sort: json["sort"],
        rawFacet: json["rawFacet"],
        seoPath: json["seoPath"],
        ps: json["ps"],
        ptss: json["ptss"],
        trsp: json["trsp"],
        recallSet: json["recall_set"],
        moduleSearch: json["module_search"],
        minPrice: json["min_price"],
        maxPrice: json["max_price"],
        storeSlotBooked: json["storeSlotBooked"],
        fitmentSearchParamsCatId: json["cat_id"],
        beShelfId: json["_be_shelf_id"],
        catId: json["catId"],
        fitmentSearchParamsBeShelfId: json["beShelfId"],
        searchArgs: SearchArgs.fromJson(json["searchArgs"]),
        additionalQueryParams:
            AdditionalQueryParams.fromJson(json["additionalQueryParams"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealsId": dealsId,
        "query": query,
        "page": page,
        "prg": prg,
        "facet": facet,
        "sort": sort,
        "rawFacet": rawFacet,
        "seoPath": seoPath,
        "ps": ps,
        "ptss": ptss,
        "trsp": trsp,
        "recall_set": recallSet,
        "module_search": moduleSearch,
        "min_price": minPrice,
        "max_price": maxPrice,
        "storeSlotBooked": storeSlotBooked,
        "cat_id": fitmentSearchParamsCatId,
        "_be_shelf_id": beShelfId,
        "catId": catId,
        "beShelfId": fitmentSearchParamsBeShelfId,
        "searchArgs": searchArgs.toJson(),
        "additionalQueryParams": additionalQueryParams.toJson(),
      };
}

class SearchArgs {
  SearchArgs({
    required this.query,
    required this.catId,
    required this.prg,
    required this.facet,
  });

  String query;
  String catId;
  String prg;
  String facet;

  factory SearchArgs.fromJson(Map<String, dynamic> json) => SearchArgs(
        query: json["query"],
        catId: json["cat_id"],
        prg: json["prg"],
        facet: json["facet"],
      );

  Map<String, dynamic> toJson() => {
        "query": query,
        "cat_id": catId,
        "prg": prg,
        "facet": facet,
      };
}

class PersistedQueriesConfig {
  PersistedQueriesConfig({
    required this.allowList,
    required this.blackList,
    required this.enableAllowList,
    required this.enablePersistedQueries,
  });

  List<String> allowList;
  List<String> blackList;
  bool enableAllowList;
  bool enablePersistedQueries;

  factory PersistedQueriesConfig.fromJson(Map<String, dynamic> json) =>
      PersistedQueriesConfig(
        allowList: List<String>.from(json["allowList"].map((x) => x)),
        blackList: List<String>.from(json["blackList"].map((x) => x)),
        enableAllowList: json["enableAllowList"],
        enablePersistedQueries: json["enablePersistedQueries"],
      );

  Map<String, dynamic> toJson() => {
        "allowList": List<dynamic>.from(allowList.map((x) => x)),
        "blackList": List<dynamic>.from(blackList.map((x) => x)),
        "enableAllowList": enableAllowList,
        "enablePersistedQueries": enablePersistedQueries,
      };
}

class Psych {
  Psych({
    required this.isMobile,
    required this.isBot,
    required this.isDesktop,
    required this.trafficType,
  });

  bool isMobile;
  bool isBot;
  bool isDesktop;
  String trafficType;

  factory Psych.fromJson(Map<String, dynamic> json) => Psych(
        isMobile: json["isMobile"],
        isBot: json["isBot"],
        isDesktop: json["isDesktop"],
        trafficType: json["trafficType"],
      );

  Map<String, dynamic> toJson() => {
        "isMobile": isMobile,
        "isBot": isBot,
        "isDesktop": isDesktop,
        "trafficType": trafficType,
      };
}

class Trace {
  Trace({
    required this.traceId,
    required this.spanId,
    required this.traceFlags,
  });

  String traceId;
  String spanId;
  int traceFlags;

  factory Trace.fromJson(Map<String, dynamic> json) => Trace(
        traceId: json["traceId"],
        spanId: json["spanId"],
        traceFlags: json["traceFlags"],
      );

  Map<String, dynamic> toJson() => {
        "traceId": traceId,
        "spanId": spanId,
        "traceFlags": traceFlags,
      };
}

class Query {
  Query({
    required this.query,
    required this.sort,
    required this.page,
  });

  String query;
  String sort;
  String page;

  factory Query.fromJson(Map<String, dynamic> json) => Query(
        query: json["query"],
        sort: json["sort"],
        page: json["page"],
      );

  Map<String, dynamic> toJson() => {
        "query": query,
        "sort": sort,
        "page": page,
      };
}

class RuntimeConfig {
  RuntimeConfig({
    required this.nxApplicationName,
    required this.isDev,
    required this.enableLatencyTrace,
    required this.tenant,
    required this.vid,
    required this.tenantV2,
    required this.csp,
    required this.mockUrl,
    required this.mock,
    required this.endpointMappings,
    required this.googleMaps,
    required this.membershipConfig,
    required this.pulseBeacon,
    required this.perimeterX,
    required this.identity,
    required this.threatMetrix,
    required this.paymentsPageUrl,
    required this.paymentsChooserPageUrl,
    required this.walletPageUrl,
    required this.wmcashFormPageUrl,
    required this.ads,
    required this.moatIvt,
    required this.appVersion,
    required this.appSha,
    required this.profile,
    required this.tmxOrgId,
    required this.dataCenter,
    required this.queryContext,
  });

  String nxApplicationName;
  bool isDev;
  bool enableLatencyTrace;
  String tenant;
  String vid;
  TenantV2 tenantV2;
  Csp csp;
  String mockUrl;
  bool mock;
  EndpointMappings endpointMappings;
  GoogleMaps googleMaps;
  MembershipConfig membershipConfig;
  PulseBeacon pulseBeacon;
  PerimeterX perimeterX;
  Identity identity;
  ThreatMetrix threatMetrix;
  String paymentsPageUrl;
  String paymentsChooserPageUrl;
  String walletPageUrl;
  String wmcashFormPageUrl;
  RuntimeConfigAds ads;
  String moatIvt;
  String appVersion;
  String appSha;
  String profile;
  String tmxOrgId;
  String dataCenter;
  QueryContext queryContext;

  factory RuntimeConfig.fromJson(Map<String, dynamic> json) => RuntimeConfig(
        nxApplicationName: json["nxApplicationName"],
        isDev: json["isDev"],
        enableLatencyTrace: json["enableLatencyTrace"],
        tenant: json["tenant"],
        vid: json["vid"],
        tenantV2: TenantV2.fromJson(json["tenantV2"]),
        csp: Csp.fromJson(json["csp"]),
        mockUrl: json["mockURL"],
        mock: json["mock"],
        endpointMappings: EndpointMappings.fromJson(json["endpointMappings"]),
        googleMaps: GoogleMaps.fromJson(json["googleMaps"]),
        membershipConfig: MembershipConfig.fromJson(json["membershipConfig"]),
        pulseBeacon: PulseBeacon.fromJson(json["pulseBeacon"]),
        perimeterX: PerimeterX.fromJson(json["perimeterX"]),
        identity: Identity.fromJson(json["identity"]),
        threatMetrix: ThreatMetrix.fromJson(json["threatMetrix"]),
        paymentsPageUrl: json["paymentsPageUrl"],
        paymentsChooserPageUrl: json["paymentsChooserPageUrl"],
        walletPageUrl: json["walletPageUrl"],
        wmcashFormPageUrl: json["wmcashFormPageUrl"],
        ads: RuntimeConfigAds.fromJson(json["ads"]),
        moatIvt: json["moatIvt"],
        appVersion: json["appVersion"],
        appSha: json["appSha"],
        profile: json["profile"],
        tmxOrgId: json["tmxOrgId"],
        dataCenter: json["dataCenter"],
        queryContext: QueryContext.fromJson(json["queryContext"]),
      );

  Map<String, dynamic> toJson() => {
        "nxApplicationName": nxApplicationName,
        "isDev": isDev,
        "enableLatencyTrace": enableLatencyTrace,
        "tenant": tenant,
        "vid": vid,
        "tenantV2": tenantV2.toJson(),
        "csp": csp.toJson(),
        "mockURL": mockUrl,
        "mock": mock,
        "endpointMappings": endpointMappings.toJson(),
        "googleMaps": googleMaps.toJson(),
        "membershipConfig": membershipConfig.toJson(),
        "pulseBeacon": pulseBeacon.toJson(),
        "perimeterX": perimeterX.toJson(),
        "identity": identity.toJson(),
        "threatMetrix": threatMetrix.toJson(),
        "paymentsPageUrl": paymentsPageUrl,
        "paymentsChooserPageUrl": paymentsChooserPageUrl,
        "walletPageUrl": walletPageUrl,
        "wmcashFormPageUrl": wmcashFormPageUrl,
        "ads": ads.toJson(),
        "moatIvt": moatIvt,
        "appVersion": appVersion,
        "appSha": appSha,
        "profile": profile,
        "tmxOrgId": tmxOrgId,
        "dataCenter": dataCenter,
        "queryContext": queryContext.toJson(),
      };
}

class RuntimeConfigAds {
  RuntimeConfigAds({
    required this.env,
    required this.host,
    required this.moatId,
    required this.moatVideoId,
  });

  String env;
  String host;
  String moatId;
  String moatVideoId;

  factory RuntimeConfigAds.fromJson(Map<String, dynamic> json) =>
      RuntimeConfigAds(
        env: json["env"],
        host: json["host"],
        moatId: json["moatId"],
        moatVideoId: json["moatVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "env": env,
        "host": host,
        "moatId": moatId,
        "moatVideoId": moatVideoId,
      };
}

class Csp {
  Csp({
    required this.reportViolations,
    required this.directives,
    required this.reportUri,
  });

  bool reportViolations;
  Directives directives;
  String reportUri;

  factory Csp.fromJson(Map<String, dynamic> json) => Csp(
        reportViolations: json["reportViolations"],
        directives: Directives.fromJson(json["directives"]),
        reportUri: json["reportUri"],
      );

  Map<String, dynamic> toJson() => {
        "reportViolations": reportViolations,
        "directives": directives.toJson(),
        "reportUri": reportUri,
      };
}

class Directives {
  Directives({
    required this.defaultSrc,
    required this.scriptSrc,
    required this.styleSrc,
    required this.fontSrc,
    required this.imgSrc,
    required this.connectSrc,
    required this.objectSrc,
    required this.frameSrc,
    required this.frameAncestors,
    required this.mediaSrc,
    required this.workerSrc,
    required this.childSrc,
  });

  ChildSrc defaultSrc;
  ScriptSrc scriptSrc;
  ChildSrc styleSrc;
  ChildSrc fontSrc;
  ChildSrc imgSrc;
  ChildSrc connectSrc;
  ChildSrc objectSrc;
  ChildSrc frameSrc;
  ChildSrc frameAncestors;
  ChildSrc mediaSrc;
  ChildSrc workerSrc;
  ChildSrc childSrc;

  factory Directives.fromJson(Map<String, dynamic> json) => Directives(
        defaultSrc: ChildSrc.fromJson(json["default-src"]),
        scriptSrc: ScriptSrc.fromJson(json["script-src"]),
        styleSrc: ChildSrc.fromJson(json["style-src"]),
        fontSrc: ChildSrc.fromJson(json["font-src"]),
        imgSrc: ChildSrc.fromJson(json["img-src"]),
        connectSrc: ChildSrc.fromJson(json["connect-src"]),
        objectSrc: ChildSrc.fromJson(json["object-src"]),
        frameSrc: ChildSrc.fromJson(json["frame-src"]),
        frameAncestors: ChildSrc.fromJson(json["frame-ancestors"]),
        mediaSrc: ChildSrc.fromJson(json["media-src"]),
        workerSrc: ChildSrc.fromJson(json["worker-src"]),
        childSrc: ChildSrc.fromJson(json["child-src"]),
      );

  Map<String, dynamic> toJson() => {
        "default-src": defaultSrc.toJson(),
        "script-src": scriptSrc.toJson(),
        "style-src": styleSrc.toJson(),
        "font-src": fontSrc.toJson(),
        "img-src": imgSrc.toJson(),
        "connect-src": connectSrc.toJson(),
        "object-src": objectSrc.toJson(),
        "frame-src": frameSrc.toJson(),
        "frame-ancestors": frameAncestors.toJson(),
        "media-src": mediaSrc.toJson(),
        "worker-src": workerSrc.toJson(),
        "child-src": childSrc.toJson(),
      };
}

class ChildSrc {
  ChildSrc({
    required this.values,
  });

  List<String> values;

  factory ChildSrc.fromJson(Map<String, dynamic> json) => ChildSrc(
        values: List<String>.from(json["values"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "values": List<dynamic>.from(values.map((x) => x)),
      };
}

class ScriptSrc {
  ScriptSrc({
    required this.nonce,
    required this.values,
  });

  bool nonce;
  List<String> values;

  factory ScriptSrc.fromJson(Map<String, dynamic> json) => ScriptSrc(
        nonce: json["nonce"],
        values: List<String>.from(json["values"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "nonce": nonce,
        "values": List<dynamic>.from(values.map((x) => x)),
      };
}

class EndpointMappings {
  EndpointMappings({
    required this.operations,
    required this.queryStrings,
    required this.pages,
  });

  Operations operations;
  QueryStrings queryStrings;
  Map<String, MutationMergeAndGetCart> pages;

  factory EndpointMappings.fromJson(Map<String, dynamic> json) =>
      EndpointMappings(
        operations: Operations.fromJson(json["operations"]),
        queryStrings: QueryStrings.fromJson(json["queryStrings"]),
        pages: Map.from(json["pages"]).map((k, v) =>
            MapEntry<String, MutationMergeAndGetCart>(
                k, mutationMergeAndGetCartValues.map[v]!)),
      );

  Map<String, dynamic> toJson() => {
        "operations": operations.toJson(),
        "queryStrings": queryStrings.toJson(),
        "pages": Map.from(pages).map((k, v) => MapEntry<String, dynamic>(
            k, mutationMergeAndGetCartValues.reverse[v])),
      };
}

class Operations {
  Operations({
    required this.queryConfiguration,
    required this.queryRewardsHistoryPage,
    required this.queryContentPage,
    required this.queryBrandPage,
    required this.queryCheckItemCartEligibility,
    required this.mutationMergeAndGetCart,
    required this.queryGetGuestOrder,
    required this.queryPurchaseHistory,
    required this.mutationNotifyCapOneBannerSnooze,
    required this.mutationCancelOrder,
    required this.queryLastCallPage,
    required this.queryAdV2Display,
    required this.queryGetCommPreference,
    required this.queryPurchasedProtectionPlans,
    required this.queryProtectionPlanDetail,
    required this.querySubscriptions,
    required this.queryNodeDetailQuery,
    required this.queryNearbyNodesQuery,
    required this.queryLocalStoreContentQuery,
    required this.queryCartSubstitutions,
    required this.queryCartShopSimilar,
    required this.queryGetEarlyAccessLearnMoreData,
    required this.queryPostCartLoadPage,
    required this.querySearchStore,
    required this.queryLocalStoreCategoryContent,
    required this.queryNodeDetails,
    required this.queryStoreFinderNearbyNodesQuery,
    required this.mutationCreateInsuranceSalesLead,
    required this.mutationSetPickup,
    required this.queryGetCart,
    required this.queryFeedShowCategories,
    required this.queryFeedsByStatus,
  });

  MutationMergeAndGetCart queryConfiguration;
  MutationMergeAndGetCart queryRewardsHistoryPage;
  MutationMergeAndGetCart queryContentPage;
  MutationMergeAndGetCart queryBrandPage;
  MutationMergeAndGetCart queryCheckItemCartEligibility;
  MutationMergeAndGetCart mutationMergeAndGetCart;
  MutationMergeAndGetCart queryGetGuestOrder;
  String queryPurchaseHistory;
  MutationMergeAndGetCart mutationNotifyCapOneBannerSnooze;
  String mutationCancelOrder;
  MutationMergeAndGetCart queryLastCallPage;
  String queryAdV2Display;
  MutationMergeAndGetCart queryGetCommPreference;
  String queryPurchasedProtectionPlans;
  String queryProtectionPlanDetail;
  MutationMergeAndGetCart querySubscriptions;
  MutationMergeAndGetCart queryNodeDetailQuery;
  MutationMergeAndGetCart queryNearbyNodesQuery;
  MutationMergeAndGetCart queryLocalStoreContentQuery;
  MutationMergeAndGetCart queryCartSubstitutions;
  MutationMergeAndGetCart queryCartShopSimilar;
  String queryGetEarlyAccessLearnMoreData;
  MutationMergeAndGetCart queryPostCartLoadPage;
  MutationMergeAndGetCart querySearchStore;
  MutationMergeAndGetCart queryLocalStoreCategoryContent;
  MutationMergeAndGetCart queryNodeDetails;
  MutationMergeAndGetCart queryStoreFinderNearbyNodesQuery;
  String mutationCreateInsuranceSalesLead;
  MutationMergeAndGetCart mutationSetPickup;
  MutationMergeAndGetCart queryGetCart;
  MutationMergeAndGetCart queryFeedShowCategories;
  MutationMergeAndGetCart queryFeedsByStatus;

  factory Operations.fromJson(Map<String, dynamic> json) => Operations(
        queryConfiguration:
            mutationMergeAndGetCartValues.map[json["query configuration"]]!,
        queryRewardsHistoryPage: mutationMergeAndGetCartValues
            .map[json["query RewardsHistoryPage"]]!,
        queryContentPage:
            mutationMergeAndGetCartValues.map[json["query ContentPage"]]!,
        queryBrandPage:
            mutationMergeAndGetCartValues.map[json["query BrandPage"]]!,
        queryCheckItemCartEligibility: mutationMergeAndGetCartValues
            .map[json["query checkItemCartEligibility"]]!,
        mutationMergeAndGetCart: mutationMergeAndGetCartValues
            .map[json["mutation MergeAndGetCart"]]!,
        queryGetGuestOrder:
            mutationMergeAndGetCartValues.map[json["query getGuestOrder"]]!,
        queryPurchaseHistory: json["query PurchaseHistory"],
        mutationNotifyCapOneBannerSnooze: mutationMergeAndGetCartValues
            .map[json["mutation NotifyCapOneBannerSnooze"]]!,
        mutationCancelOrder: json["mutation CancelOrder"],
        queryLastCallPage:
            mutationMergeAndGetCartValues.map[json["query LastCallPage"]]!,
        queryAdV2Display: json["query AdV2Display"],
        queryGetCommPreference:
            mutationMergeAndGetCartValues.map[json["query GetCommPreference"]]!,
        queryPurchasedProtectionPlans: json["query PurchasedProtectionPlans"],
        queryProtectionPlanDetail: json["query ProtectionPlanDetail"],
        querySubscriptions:
            mutationMergeAndGetCartValues.map[json["query subscriptions"]]!,
        queryNodeDetailQuery:
            mutationMergeAndGetCartValues.map[json["query NodeDetailQuery"]]!,
        queryNearbyNodesQuery:
            mutationMergeAndGetCartValues.map[json["query NearbyNodesQuery"]]!,
        queryLocalStoreContentQuery: mutationMergeAndGetCartValues
            .map[json["query LocalStoreContentQuery"]]!,
        queryCartSubstitutions:
            mutationMergeAndGetCartValues.map[json["query CartSubstitutions"]]!,
        queryCartShopSimilar:
            mutationMergeAndGetCartValues.map[json["query CartShopSimilar"]]!,
        queryGetEarlyAccessLearnMoreData:
            json["query GetEarlyAccessLearnMoreData"],
        queryPostCartLoadPage:
            mutationMergeAndGetCartValues.map[json["query PostCartLoadPage"]]!,
        querySearchStore:
            mutationMergeAndGetCartValues.map[json["query SearchStore"]]!,
        queryLocalStoreCategoryContent: mutationMergeAndGetCartValues
            .map[json["query LocalStoreCategoryContent"]]!,
        queryNodeDetails:
            mutationMergeAndGetCartValues.map[json["query nodeDetails"]]!,
        queryStoreFinderNearbyNodesQuery: mutationMergeAndGetCartValues
            .map[json["query storeFinderNearbyNodesQuery"]]!,
        mutationCreateInsuranceSalesLead:
            json["mutation CreateInsuranceSalesLead"],
        mutationSetPickup:
            mutationMergeAndGetCartValues.map[json["mutation setPickup"]]!,
        queryGetCart: mutationMergeAndGetCartValues.map[json["query getCart"]]!,
        queryFeedShowCategories: mutationMergeAndGetCartValues
            .map[json["query feedShowCategories"]]!,
        queryFeedsByStatus:
            mutationMergeAndGetCartValues.map[json["query feedsByStatus"]]!,
      );

  Map<String, dynamic> toJson() => {
        "query configuration":
            mutationMergeAndGetCartValues.reverse[queryConfiguration],
        "query RewardsHistoryPage":
            mutationMergeAndGetCartValues.reverse[queryRewardsHistoryPage],
        "query ContentPage":
            mutationMergeAndGetCartValues.reverse[queryContentPage],
        "query BrandPage":
            mutationMergeAndGetCartValues.reverse[queryBrandPage],
        "query checkItemCartEligibility": mutationMergeAndGetCartValues
            .reverse[queryCheckItemCartEligibility],
        "mutation MergeAndGetCart":
            mutationMergeAndGetCartValues.reverse[mutationMergeAndGetCart],
        "query getGuestOrder":
            mutationMergeAndGetCartValues.reverse[queryGetGuestOrder],
        "query PurchaseHistory": queryPurchaseHistory,
        "mutation NotifyCapOneBannerSnooze": mutationMergeAndGetCartValues
            .reverse[mutationNotifyCapOneBannerSnooze],
        "mutation CancelOrder": mutationCancelOrder,
        "query LastCallPage":
            mutationMergeAndGetCartValues.reverse[queryLastCallPage],
        "query AdV2Display": queryAdV2Display,
        "query GetCommPreference":
            mutationMergeAndGetCartValues.reverse[queryGetCommPreference],
        "query PurchasedProtectionPlans": queryPurchasedProtectionPlans,
        "query ProtectionPlanDetail": queryProtectionPlanDetail,
        "query subscriptions":
            mutationMergeAndGetCartValues.reverse[querySubscriptions],
        "query NodeDetailQuery":
            mutationMergeAndGetCartValues.reverse[queryNodeDetailQuery],
        "query NearbyNodesQuery":
            mutationMergeAndGetCartValues.reverse[queryNearbyNodesQuery],
        "query LocalStoreContentQuery":
            mutationMergeAndGetCartValues.reverse[queryLocalStoreContentQuery],
        "query CartSubstitutions":
            mutationMergeAndGetCartValues.reverse[queryCartSubstitutions],
        "query CartShopSimilar":
            mutationMergeAndGetCartValues.reverse[queryCartShopSimilar],
        "query GetEarlyAccessLearnMoreData": queryGetEarlyAccessLearnMoreData,
        "query PostCartLoadPage":
            mutationMergeAndGetCartValues.reverse[queryPostCartLoadPage],
        "query SearchStore":
            mutationMergeAndGetCartValues.reverse[querySearchStore],
        "query LocalStoreCategoryContent": mutationMergeAndGetCartValues
            .reverse[queryLocalStoreCategoryContent],
        "query nodeDetails":
            mutationMergeAndGetCartValues.reverse[queryNodeDetails],
        "query storeFinderNearbyNodesQuery": mutationMergeAndGetCartValues
            .reverse[queryStoreFinderNearbyNodesQuery],
        "mutation CreateInsuranceSalesLead": mutationCreateInsuranceSalesLead,
        "mutation setPickup":
            mutationMergeAndGetCartValues.reverse[mutationSetPickup],
        "query getCart": mutationMergeAndGetCartValues.reverse[queryGetCart],
        "query feedShowCategories":
            mutationMergeAndGetCartValues.reverse[queryFeedShowCategories],
        "query feedsByStatus":
            mutationMergeAndGetCartValues.reverse[queryFeedsByStatus],
      };
}

enum MutationMergeAndGetCart { CEGATEWAY, CEORDERS, CECXO }

final mutationMergeAndGetCartValues = EnumValues({
  "cecxo": MutationMergeAndGetCart.CECXO,
  "cegateway": MutationMergeAndGetCart.CEGATEWAY,
  "ceorders": MutationMergeAndGetCart.CEORDERS
});

class QueryStrings {
  QueryStrings({
    required this.stepCart,
    required this.stepBookslot,
    required this.entitytype,
    required this.state,
    required this.source,
  });

  MutationMergeAndGetCart stepCart;
  MutationMergeAndGetCart stepBookslot;
  MutationMergeAndGetCart entitytype;
  MutationMergeAndGetCart state;
  MutationMergeAndGetCart source;

  factory QueryStrings.fromJson(Map<String, dynamic> json) => QueryStrings(
        stepCart: mutationMergeAndGetCartValues.map[json["step=cart"]]!,
        stepBookslot: mutationMergeAndGetCartValues.map[json["step=bookslot"]]!,
        entitytype: mutationMergeAndGetCartValues.map[json["entitytype=*"]]!,
        state: mutationMergeAndGetCartValues.map[json["state=*"]]!,
        source: mutationMergeAndGetCartValues.map[json["source=*"]]!,
      );

  Map<String, dynamic> toJson() => {
        "step=cart": mutationMergeAndGetCartValues.reverse[stepCart],
        "step=bookslot": mutationMergeAndGetCartValues.reverse[stepBookslot],
        "entitytype=*": mutationMergeAndGetCartValues.reverse[entitytype],
        "state=*": mutationMergeAndGetCartValues.reverse[state],
        "source=*": mutationMergeAndGetCartValues.reverse[source],
      };
}

class GoogleMaps {
  GoogleMaps({
    required this.checkAddressApiKey,
    required this.addressApiKey,
    required this.geoCodingApiKey,
    required this.riseMapApiKey,
  });

  String checkAddressApiKey;
  String addressApiKey;
  String geoCodingApiKey;
  RiseMapApiKey riseMapApiKey;

  factory GoogleMaps.fromJson(Map<String, dynamic> json) => GoogleMaps(
        checkAddressApiKey: json["checkAddressAPIKey"],
        addressApiKey: json["addressAPIKey"],
        geoCodingApiKey: json["geoCodingAPIKey"],
        riseMapApiKey: RiseMapApiKey.fromJson(json["riseMapAPIKey"]),
      );

  Map<String, dynamic> toJson() => {
        "checkAddressAPIKey": checkAddressApiKey,
        "addressAPIKey": addressApiKey,
        "geoCodingAPIKey": geoCodingApiKey,
        "riseMapAPIKey": riseMapApiKey.toJson(),
      };
}

class RiseMapApiKey {
  RiseMapApiKey({
    required this.dev,
    required this.defaultKey,
  });

  String dev;
  String defaultKey;

  factory RiseMapApiKey.fromJson(Map<String, dynamic> json) => RiseMapApiKey(
        dev: json["dev"],
        defaultKey: json["defaultKey"],
      );

  Map<String, dynamic> toJson() => {
        "dev": dev,
        "defaultKey": defaultKey,
      };
}

class Identity {
  Identity({
    required this.context,
    required this.authFrameRoutes,
  });

  Context context;
  AuthFrameRoutes authFrameRoutes;

  factory Identity.fromJson(Map<String, dynamic> json) => Identity(
        context: Context.fromJson(json["context"]),
        authFrameRoutes: AuthFrameRoutes.fromJson(json["authFrameRoutes"]),
      );

  Map<String, dynamic> toJson() => {
        "context": context.toJson(),
        "authFrameRoutes": authFrameRoutes.toJson(),
      };
}

class AuthFrameRoutes {
  AuthFrameRoutes({
    required this.frame,
    required this.reauthFrame,
    required this.gxoSignup,
    required this.gxoSignin,
  });

  String frame;
  String reauthFrame;
  String gxoSignup;
  String gxoSignin;

  factory AuthFrameRoutes.fromJson(Map<String, dynamic> json) =>
      AuthFrameRoutes(
        frame: json["frame"],
        reauthFrame: json["reauthFrame"],
        gxoSignup: json["gxoSignup"],
        gxoSignin: json["gxoSignin"],
      );

  Map<String, dynamic> toJson() => {
        "frame": frame,
        "reauthFrame": reauthFrame,
        "gxoSignup": gxoSignup,
        "gxoSignin": gxoSignin,
      };
}

class Context {
  Context({
    required this.signOutUrl,
    required this.signInPathname,
    required this.createAccountPathname,
    required this.tenants,
    required this.marketingEmails,
  });

  String signOutUrl;
  String signInPathname;
  String createAccountPathname;
  List<Tenant> tenants;
  bool marketingEmails;

  factory Context.fromJson(Map<String, dynamic> json) => Context(
        signOutUrl: json["signOutUrl"],
        signInPathname: json["signInPathname"],
        createAccountPathname: json["createAccountPathname"],
        tenants:
            List<Tenant>.from(json["tenants"].map((x) => Tenant.fromJson(x))),
        marketingEmails: json["marketingEmails"],
      );

  Map<String, dynamic> toJson() => {
        "signOutUrl": signOutUrl,
        "signInPathname": signInPathname,
        "createAccountPathname": createAccountPathname,
        "tenants": List<dynamic>.from(tenants.map((x) => x.toJson())),
        "marketingEmails": marketingEmails,
      };
}

class Tenant {
  Tenant({
    required this.host,
    required this.mart,
    required this.templates,
  });

  Host host;
  String mart;
  List<String> templates;

  factory Tenant.fromJson(Map<String, dynamic> json) => Tenant(
        host: Host.fromJson(json["host"]),
        mart: json["mart"],
        templates: List<String>.from(json["templates"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "host": host.toJson(),
        "mart": mart,
        "templates": List<dynamic>.from(templates.map((x) => x)),
      };
}

class Host {
  Host({
    required this.stage,
    required this.teflon,
    required this.production,
  });

  String stage;
  String teflon;
  String production;

  factory Host.fromJson(Map<String, dynamic> json) => Host(
        stage: json["stage"],
        teflon: json["teflon"],
        production: json["production"],
      );

  Map<String, dynamic> toJson() => {
        "stage": stage,
        "teflon": teflon,
        "production": production,
      };
}

class MembershipConfig {
  MembershipConfig({
    required this.showWPlusBanner,
  });

  bool showWPlusBanner;

  factory MembershipConfig.fromJson(Map<String, dynamic> json) =>
      MembershipConfig(
        showWPlusBanner: json["showWPlusBanner"],
      );

  Map<String, dynamic> toJson() => {
        "showWPlusBanner": showWPlusBanner,
      };
}

class PerimeterX {
  PerimeterX({
    required this.enable,
    required this.initScript,
  });

  bool enable;
  String initScript;

  factory PerimeterX.fromJson(Map<String, dynamic> json) => PerimeterX(
        enable: json["enable"],
        initScript: json["initScript"],
      );

  Map<String, dynamic> toJson() => {
        "enable": enable,
        "initScript": initScript,
      };
}

class PulseBeacon {
  PulseBeacon({
    required this.enable,
    required this.hostname,
    required this.bd,
    required this.bh,
    required this.hostWithQm,
    required this.hostWithoutQm,
    required this.photoHost,
    required this.photoHostWithoutQm,
  });

  bool enable;
  String hostname;
  String bd;
  String bh;
  String hostWithQm;
  String hostWithoutQm;
  String photoHost;
  String photoHostWithoutQm;

  factory PulseBeacon.fromJson(Map<String, dynamic> json) => PulseBeacon(
        enable: json["enable"],
        hostname: json["hostname"],
        bd: json["bd"],
        bh: json["bh"],
        hostWithQm: json["hostWithQM"],
        hostWithoutQm: json["hostWithoutQM"],
        photoHost: json["photoHost"],
        photoHostWithoutQm: json["photoHostWithoutQM"],
      );

  Map<String, dynamic> toJson() => {
        "enable": enable,
        "hostname": hostname,
        "bd": bd,
        "bh": bh,
        "hostWithQM": hostWithQm,
        "hostWithoutQM": hostWithoutQm,
        "photoHost": photoHost,
        "photoHostWithoutQM": photoHostWithoutQm,
      };
}

class QueryContext {
  QueryContext({
    required this.appVersion,
    required this.gql,
    required this.rest,
  });

  String appVersion;
  Gql gql;
  Rest rest;

  factory QueryContext.fromJson(Map<String, dynamic> json) => QueryContext(
        appVersion: json["appVersion"],
        gql: Gql.fromJson(json["gql"]),
        rest: Rest.fromJson(json["rest"]),
      );

  Map<String, dynamic> toJson() => {
        "appVersion": appVersion,
        "gql": gql.toJson(),
        "rest": rest.toJson(),
      };
}

class Gql {
  Gql({
    required this.endpointsByName,
  });

  GqlEndpointsByName endpointsByName;

  factory Gql.fromJson(Map<String, dynamic> json) => Gql(
        endpointsByName: GqlEndpointsByName.fromJson(json["endpointsByName"]),
      );

  Map<String, dynamic> toJson() => {
        "endpointsByName": endpointsByName.toJson(),
      };
}

class GqlEndpointsByName {
  GqlEndpointsByName({
    required this.ceaccount,
    required this.cecxo,
    required this.cecph,
    required this.adsgateway,
    required this.aroundme,
    required this.ceorders,
    required this.cegateway,
    required this.wellness,
  });

  String ceaccount;
  String cecxo;
  String cecph;
  String adsgateway;
  String aroundme;
  String ceorders;
  String cegateway;
  String wellness;

  factory GqlEndpointsByName.fromJson(Map<String, dynamic> json) =>
      GqlEndpointsByName(
        ceaccount: json["ceaccount"],
        cecxo: json["cecxo"],
        cecph: json["cecph"],
        adsgateway: json["adsgateway"],
        aroundme: json["aroundme"],
        ceorders: json["ceorders"],
        cegateway: json["cegateway"],
        wellness: json["wellness"],
      );

  Map<String, dynamic> toJson() => {
        "ceaccount": ceaccount,
        "cecxo": cecxo,
        "cecph": cecph,
        "adsgateway": adsgateway,
        "aroundme": aroundme,
        "ceorders": ceorders,
        "cegateway": cegateway,
        "wellness": wellness,
      };
}

class Rest {
  Rest({
    required this.endpointsByName,
  });

  RestEndpointsByName endpointsByName;

  factory Rest.fromJson(Map<String, dynamic> json) => Rest(
        endpointsByName: RestEndpointsByName.fromJson(json["endpointsByName"]),
      );

  Map<String, dynamic> toJson() => {
        "endpointsByName": endpointsByName.toJson(),
      };
}

class RestEndpointsByName {
  RestEndpointsByName({
    required this.cereturns,
    required this.ceaccount,
    required this.cehelp,
    required this.cehelpchat,
    required this.ceidentity,
    required this.typeahead,
    required this.espvalidation,
    required this.warppaymentoptions,
    required this.cewarp,
    required this.ceccm,
    required this.cewireless,
    required this.storeservices,
    required this.fuelPrices,
    required this.feedbackSubmit,
    required this.quimbyMobile,
    required this.shopwithme,
  });

  String cereturns;
  String ceaccount;
  String cehelp;
  String cehelpchat;
  String ceidentity;
  String typeahead;
  String espvalidation;
  String warppaymentoptions;
  String cewarp;
  String ceccm;
  String cewireless;
  String storeservices;
  String fuelPrices;
  String feedbackSubmit;
  String quimbyMobile;
  String shopwithme;

  factory RestEndpointsByName.fromJson(Map<String, dynamic> json) =>
      RestEndpointsByName(
        cereturns: json["cereturns"],
        ceaccount: json["ceaccount"],
        cehelp: json["cehelp"],
        cehelpchat: json["cehelpchat"],
        ceidentity: json["ceidentity"],
        typeahead: json["typeahead"],
        espvalidation: json["espvalidation"],
        warppaymentoptions: json["warppaymentoptions"],
        cewarp: json["cewarp"],
        ceccm: json["ceccm"],
        cewireless: json["cewireless"],
        storeservices: json["storeservices"],
        fuelPrices: json["fuelPrices"],
        feedbackSubmit: json["feedbackSubmit"],
        quimbyMobile: json["quimbyMobile"],
        shopwithme: json["shopwithme"],
      );

  Map<String, dynamic> toJson() => {
        "cereturns": cereturns,
        "ceaccount": ceaccount,
        "cehelp": cehelp,
        "cehelpchat": cehelpchat,
        "ceidentity": ceidentity,
        "typeahead": typeahead,
        "espvalidation": espvalidation,
        "warppaymentoptions": warppaymentoptions,
        "cewarp": cewarp,
        "ceccm": ceccm,
        "cewireless": cewireless,
        "storeservices": storeservices,
        "fuelPrices": fuelPrices,
        "feedbackSubmit": feedbackSubmit,
        "quimbyMobile": quimbyMobile,
        "shopwithme": shopwithme,
      };
}

class TenantV2 {
  TenantV2({
    required this.bu,
    required this.mart,
  });

  String bu;
  String mart;

  factory TenantV2.fromJson(Map<String, dynamic> json) => TenantV2(
        bu: json["bu"],
        mart: json["mart"],
      );

  Map<String, dynamic> toJson() => {
        "bu": bu,
        "mart": mart,
      };
}

class ThreatMetrix {
  ThreatMetrix({
    required this.enable,
  });

  bool enable;

  factory ThreatMetrix.fromJson(Map<String, dynamic> json) => ThreatMetrix(
        enable: json["enable"],
      );

  Map<String, dynamic> toJson() => {
        "enable": enable,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
