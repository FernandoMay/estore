import 'package:flutter_test/flutter_test.dart';
import 'package:estore/models.dart';

Map<String, dynamic> _makeItem() {
  return {
    "__typename": "Product",
    "availabilityStatusDisplayValue": "In stock",
    "externalInfoUrl": "",
    "canonicalUrl": "/ip/Test/123",
    "canAddToCart": true,
    "showOptions": false,
    "description": "A test product",
    "flag": "",
    "fulfillmentBadges": [],
    "fulfillmentSpeed": null,
    "fulfillmentType": "STORE",
    "id": "123",
    "usItemId": "123",
    "image": "https://example.com/img.jpg",
    "isOutOfStock": false,
    "name": "Test Product",
    "price": 30,
    "preOrder": {"isPreOrder": false},
    "priceInfo": {
      "itemPrice": "", "linePrice": "", "wasPrice": "", "unitPrice": "",
      "shipPrice": "", "minPriceForVariant": "", "subscriptionPrice": "",
      "subscriptionString": "", "priceDisplayCondition": "",
      "finalCostByWeight": false, "submapType": "", "priceRangeString": "",
      "linePriceDisplay": "", "eaPricingPreText": "", "memberPriceString": "",
      "minPrice": 0.0, "savings": "", "eaPricingText": "",
    },
    "rating": {"averageRating": 4, "numberOfReviews": 10},
    "salesUnit": "EACH",
    "variantList": [],
    "isVariantTypeSwatch": false,
    "offerId": "offer_123",
    "isAtfMarker": false,
    "sellerId": "seller1",
    "sellerName": "Test Seller",
    "seeShippingEligibility": true,
    "itemType": null,
    "topResult": null,
    "quickShop": null,
    "aspectInfo": <String, dynamic>{},
    "externalInfo": null,
    "numberOfReviews": null,
    "imageInfo": {"thumbnailUrl": "", "size": "290-392"},
    "variantCriteria": [],
    "productLocation": null,
    "subscription": {"__typename": "SubscriptionData", "subscriptionEligible": false},
    "type": "REGULAR",
    "salesUnitType": "EACH",
    "specialBuy": false,
    "pac": null,
    "priceFlip": false,
    "isSponsoredFlag": false,
    "averageRating": null,
    "earlyAccessEvent": false,
    "arExperiences": {"isARHome": false, "isZeekit": false},
    "fulfillmentIcon": null,
    "groupMetaData": {"numberOfComponents": 0},
    "hasCarePlans": false,
    "imageSize": "290-392",
    "petRx": {"eligible": false},
    "quickShopCTALabel": null,
    "checkStoreAvailabilityATC": false,
    "eventAttributes": {"priceFlip": false, "specialBuy": false},
    "showAtc": true,
    "similarItems": false,
    "fulfillmentBadgeGroups": null,
    "weightIncrement": 0,
    "annualEvent": false,
    "shortDescription": "",
    "isEarlyAccessItem": false,
    "badges": {"tags": [], "groups": []},
    "fulfillmentTitle": "title_store_not_available",
    "buyBoxSuppression": false,
    "vision": {"visionCenterApproved": false},
    "badge": {"text": "", "id": "", "type": "", "key": "", "__typename": "BaseBadge"},
    "snapEligible": false,
    "showBuyNow": false,
    "availabilityStatusV2": {"display": "In stock", "value": "IN_STOCK"},
    "category": {"path": null},
    "classType": "REGULAR",
    "annualEventV2": false,
    "rewards": null,
    "shouldLazyLoad": false,
    "displayName": "sizes",
    "locationSensitive": false,
    "unitPrice": null,
    "unitPriceDisplay": null,
    "subscriptionInfo": null,
    "fullPrice": null,
    "productBadges": [],
    "freeShippingEligible": false,
  };
}

void main() {
  group('ItemElement', () {
    test('parses item JSON correctly', () {
      final item = ItemElement.fromJson(_makeItem());
      expect(item.name, "Test Product");
      expect(item.image, "https://example.com/img.jpg");
      expect(item.price, 30);
      expect(item.usItemId, "123");
    });

    test('round-trip item serialization', () {
      final item = ItemElement.fromJson(_makeItem());
      final serialized = item.toJson();
      expect(serialized["name"], "Test Product");
      expect(serialized["usItemId"], "123");
      expect(serialized["price"], 30);
    });
  });
}
