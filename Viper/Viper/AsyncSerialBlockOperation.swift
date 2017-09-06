//
//  AsyncSerialBlockOperation.swift
//  Viper
//
//  Created by Henry on 9/5/17.
//  Copyright © 2017 Henry Tsai. All rights reserved.
//

import Foundation

class AsyncSerialBlockOperation: Operation {
    override var isAsynchronous: Bool { return true }
    override var isExecuting: Bool { return state == .executing }
    override var isFinished: Bool { return state == .finished }
    var closure: (@escaping ()->Void)->Void
    init(closure: @escaping (@escaping ()->Void)->Void) {
        self.closure = closure
        super.init()
    }
    var state = State.ready {
        willSet {
            willChangeValue(forKey: state.keyPath)
            willChangeValue(forKey: newValue.keyPath)
        }
        didSet {
            didChangeValue(forKey: state.keyPath)
            didChangeValue(forKey: oldValue.keyPath)
        }
    }
    
    enum State: String {
        case ready = "Ready"
        case executing = "Executing"
        case finished = "Finished"
        fileprivate var keyPath: String { return "is" + self.rawValue }
    }
    
    override func start() {
        if self.isCancelled {
            state = .finished
        } else {
            state = .executing
            closure({ [weak self] in
                self?.state = .finished
            })
        }
    }
}
