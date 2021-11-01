//
//  Logger.swift
//  TapLogger
//
//  Created by Dennis Pashkov on 11/8/17.
//  Copyright © 2017 Tap Payments. All rights reserved.
//

import struct TapAdditionsKit.LocaleAdditions

public func DebugLog(_ format: String, _ args: CVarArg..., filename: String = #file, line: Int = #line, funcName: String = #function) {
    
    #if DEBUG
        LOG(format, args, filename: filename, line: line, funcName: funcName)
    #endif
}

public func AdhocLog(_ format: String, _ args: CVarArg..., filename: String = #file, line: Int = #line, funcName: String = #function) {
    
    #if DEBUG
        LOG(format, args, filename: filename, line: line, funcName: funcName)
    #elseif ADHOC
        LOG(format, args, filename: filename, line: line, funcName: funcName)
    #endif
}

public func ReleaseLog(_ format: String, _ args: CVarArg..., filename: String = #file, line: Int = #line, funcName: String = #function) {
    
    LOG(format, args, filename: filename, line: line, funcName: funcName)
}

private func LOG(_ format: String, _ args: [CVarArg], filename: String, line: Int, funcName: String) {
    
    var threadId: __uint64_t = 0
    pthread_threadid_np(nil, &threadId)
    
    let process = ProcessInfo.processInfo
    
    let log = args.count > 0 ? String(format: format, arguments: args) : format
    
    print("\(logDateFormatter.string(from: Date())) \(process.processName)[\(process.processIdentifier):\(threadId)] \(filename.lastPathComponent)(\(line)) \(funcName):\t\(log)\n", terminator: String.empty)
}

private let logDateFormatter = DateFormatter(locale: Locale.enUS, dateFormat: "MM/dd/yyyy HH:mm:ss:SSS")
