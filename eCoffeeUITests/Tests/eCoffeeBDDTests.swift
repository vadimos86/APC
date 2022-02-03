import Foundation
import XCTest

class BDDTest: eCoffeeUITestsBase

{
    //Verify that user can successfully login
    func test01_UserLogIn() {
        givenAppIsReady()
        whenIOpenBasket()
        whenIEnterLogIn(Login: "gupta.akki23@gmail.com")
        whenIEnterPassword(Password: "Otrium1234")
        thenUserCanLogIn()
    }
    
    //Verify that user can successfully add new item into basket
    func test02_AddItemToBasket() {
        givenAppIsReady()
        whenISelectItem()
        whenIAddItemToBasket()
        thenISeeAddedToBasketConfirmation()
    }
    
    //Verify that user can successfully complete order
    func test03_CompleteOrder() {
        givenAppIsReady()
        whenIOpenBasket()
        whenIPlaceOrder()
        whenISelectCreditCardOption()
        whenISelectTipTenPercent()
        whenIConfirmOrder()
        thenISeeOrderConfirmation()
    }
    
    //Verify that user can successfully logout
    func test04_UserLogOut() {
        givenAppIsReady()
        thenICanLogOut()
    }
}
