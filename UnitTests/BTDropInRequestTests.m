#import <XCTest/XCTest.h>

#import "BTDropInRequest.h"
#import "BTPostalAddress.h"

@interface BTDropInRequestTests : XCTestCase

@end

@implementation BTDropInRequestTests

- (void)test_copyProperties {
    BTPostalAddress *address = [BTPostalAddress new];
    BTDropInRequest *originalRequest = [BTDropInRequest new];
    originalRequest.amount = @"10.01";
    originalRequest.currencyCode = @"USD";
    originalRequest.noShipping = YES;
    originalRequest.shippingAddress = address;
    originalRequest.additionalPayPalScopes = [NSSet setWithObjects:@"email", nil];
    originalRequest.applePayDisabled = YES;
    originalRequest.paypalDisabled = YES;
    originalRequest.venmoDisabled = YES;
    originalRequest.cardDisabled = YES;
    originalRequest.threeDSecureVerification = YES;
    originalRequest.cardholderNameSetting = BTFormFieldOptional;
    originalRequest.shouldMaskSecurityCode = YES;
    originalRequest.vaultManager = YES;

    BTDropInRequest *copiedRequest = [originalRequest copy];

    XCTAssertEqual(originalRequest.amount, copiedRequest.amount);
    XCTAssertEqual(originalRequest.currencyCode, copiedRequest.currencyCode);
    XCTAssertEqual(originalRequest.noShipping, copiedRequest.noShipping);
    XCTAssertEqual(originalRequest.shippingAddress, copiedRequest.shippingAddress);
    XCTAssertEqual(originalRequest.additionalPayPalScopes, copiedRequest.additionalPayPalScopes);
    XCTAssertEqual(originalRequest.applePayDisabled, copiedRequest.applePayDisabled);
    XCTAssertEqual(originalRequest.paypalDisabled, copiedRequest.paypalDisabled);
    XCTAssertEqual(originalRequest.venmoDisabled, copiedRequest.venmoDisabled);
    XCTAssertEqual(originalRequest.cardDisabled, copiedRequest.cardDisabled);
    XCTAssertEqual(originalRequest.threeDSecureVerification, copiedRequest.threeDSecureVerification);
    XCTAssertEqual(originalRequest.cardholderNameSetting, copiedRequest.cardholderNameSetting);
    XCTAssertEqual(originalRequest.shouldMaskSecurityCode, copiedRequest.shouldMaskSecurityCode);
    XCTAssertEqual(originalRequest.vaultManager, copiedRequest.vaultManager);
}

@end
