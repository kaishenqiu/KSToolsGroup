//
//  KSLog.swift



import Foundation

public func KSLog<T>(_ message: T, fileName: String = #file, methodName: String =  #function, lineNumber: Int = #line) {

    #if DEBUG
        print("\(methodName)[\(lineNumber)]:\(message)")
    #endif

}


private func print(_ object:Any) {
    #if DEBUG
        Swift.print(object)
    #endif
}
