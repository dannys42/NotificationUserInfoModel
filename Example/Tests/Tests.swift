import UIKit
import XCTest
import NotificationUserInfoModel

class Tests: XCTestCase {
    var observerHandler: (Notification)->Void = { _ in }
    
    override func setUp() {
        super.setUp()

        // A general selector that calls the observerHandler block.
        // A cheap way to make the tests easier to write
        
        /*
        let noteCenter = NotificationCenter.default
        noteCenter.addObserver(self,
                               selector: #selector(observerSelector(_:)),
                               name: .ExampleProgress,
                               object: self)
 */
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testTest() {
        
    }
    /*
    func testThatPostedModelCanBeReceived() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
        
        let txModel = ProgressNoteModel(progress: 0.1, stage: "0.1")

        let noteCenter = NotificationCenter.default
        self.observerHandler = { note in
            guard let rxModel = ProgressNoteModel(note) else {
                XCTFail("RxModel not found")
                return
            }
            
            XCTAssertEqual(txModel, rxModel, "TxModel != RxModel")
        }

        // A convenience method is provided so you can simply pass the model as your userInfo
        noteCenter.post(name: .ExampleProgress, object: self, userInfo: txModel)
        
        self.waitForExpectations(timeout: 1) { (error) in
            XCTAssertNotNil(error, "Error: \(error?.localizedDescription ?? "n/a")")
        }
    }
    
    func testPerformanceSerializer() {
        // This is an example of a performance test case.
        let model = ProgressNoteModel(progress: 0.1, stage: "0.1")
        self.measure() {
            // Put the code you want to measure the time of here.
            let userInfo = model.userInfo
            let _ = userInfo.count // remove warning about userInfo not be used
        }
    }
    
    func testPerformanceDeserializer() {
        // This is an example of a performance test case.
        let refModel = ProgressNoteModel(progress: 0.1, stage: "0.1")
        
        let userInfo = refModel.userInfo
        self.measure() {
            // Put the code you want to measure the time of here.
            guard let model = ProgressNoteModel(userInfo) else {
                XCTFail("Model could not be created")
                return
            }
            let _ = model.userInfo // remove warning about userInfo not be used
        }
    }
     */
/*
    @objc func observerSelector(_ note: Notification) {
        self.observerHandler(note)
    }
 */
}

