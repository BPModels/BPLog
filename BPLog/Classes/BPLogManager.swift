//
//  BPLogManager.swift
//  BaseProject
//
//  Created by 沙庭宇 on 2020/1/16.
//  Copyright © 2020 沙庭宇. All rights reserved.
//


import Foundation
import CocoaLumberjack

class BPLogManager: NSObject {

    @objc static let share = BPLogManager()

    // MARK: ==== Request ====

    // 上传
//    func report(complate block: BoolBlock?) {
//        BPLog("++++++++++++++++")
//        self.addUserInfo()
//        self.addDeviceInfo()
//        guard let fileData = self.zipLogFile() else { return }
//        let request = BPSettingRequest.uploadFile(type: .file, data: fileData)
//        BPNetworkService.default.httpUploadRequestTask(BPStructResponse<BPDefaultModel>.self, request: request) { (response) in
//            kWindow.toast("上传成功")
//            block?(true)
//            self.deleteZip()
//            self.deleteFile()
//        } fail: { (error) in
//            block?(false)
//            kWindow.toast("上传失败，请重试")
//            BPLog("上传日志失败：", (error as NSError).message)
//        }
//    }

    // MARK: ==== Event ====
    /// 添加用户信息
    private func addUserInfo() {
//        BPLog("当前UUID：\(BPUserModel.share.id)")
//        BPLog("当前用户名：" + BPUserModel.share.realName)
//        BPLog("当前用户手机号：" + (BPUserModel.share.phoneNumber))
//        BPLog("当前使用App版本：" + Bundle.appVersion)
//        BPLog("当前App Build版本：" + Bundle.appBuild)
    }

    /// 添加设备信息
    private func addDeviceInfo() {
//        BPLog("当前设备名称：" + BPDeviceInfoGlobalOld.share.model().rawValue)
//        BPLog("当前系统版本：" + UIDevice().systemVersion)
//        BPLog("当前网络环境：" + BPDeviceInfo.share.networkType)
    }

    // MARK: ==== Tool ====

    ///  压缩日志文件
//    private func zipLogFile() -> Data? {
//        let fileLogger    = DDFileLogger()
//        let requestLogger = BPOCLog.shared()?.loggerFoRequest
//        let eventLogger   = BPOCLog.shared()?.loggerForEvent
//
//        let logZiper         = ZipArchive()
//        let requestZiper     = ZipArchive()
//        let eventZiper       = ZipArchive()
//
//        let logDirectoryPath = fileLogger.logFileManager.logsDirectory
//        let logZipPath       = logDirectoryPath + "/Log.zip"
//
//        let requestLogList   = requestLogger?.logFileManager.sortedLogFileNames
//        let requestDirectory = requestLogger?.logFileManager.logsDirectory ?? ""
//        let requestZipPath   = requestDirectory + "/Request.zip"
//        let eventLogList     = eventLogger?.logFileManager.sortedLogFileNames
//        let eventDirectory   = eventLogger?.logFileManager.logsDirectory ?? ""
//        let eventZipPath     = eventDirectory + "/Event.zip"
//
//        BPLog("++++++++++++++++")
//        BPLog(logDirectoryPath)
//        if requestZiper.createZipFile2(requestZipPath) {
//            requestLogList?.forEach({ (name) in
//                requestZiper.addFile(toZip: requestDirectory + "/" + name, newname: name)
//            })
//            BPLog("创建Request Zip成功")
//        } else {
//            BPLog("创建Request Zip失败")
//        }
//        requestZiper.closeZipFile2()
//
//        if eventZiper.createZipFile2(eventZipPath) {
//            eventLogList?.forEach({ (name) in
//                eventZiper.addFile(toZip: eventDirectory + "/" + name, newname: name)
//            })
//            BPLog("创建Event Zip成功")
//        } else {
//            BPLog("创建Evnet Zip失败")
//        }
//        eventZiper.closeZipFile2()
//
//        guard let requestZipData = try? Data(contentsOf: URL(fileURLWithPath: requestZipPath)), let eventZipData = try? Data(contentsOf: URL(fileURLWithPath: eventZipPath)) else {
//            return nil
//        }
//        if logZiper.createZipFile2(logZipPath) {
//            logZiper.addData(toZip: requestZipData, fileAttributes: [:], newname: "Request.zip")
//            logZiper.addData(toZip: eventZipData, fileAttributes: [:], newname: "Event.zip")
//            BPLog("创建Log Zip成功")
//        } else {
//            BPLog("创建Log Zip失败")
//        }
//        logZiper.closeZipFile2()
//        guard let logZipData = try? Data(contentsOf: URL(fileURLWithPath: logZipPath))else {
//            return nil
//        }
//        return logZipData
//    }
//
//    /// 删除Zip包
//    private func deleteZip() {
//        let fileLogger    = DDFileLogger()
//        let requestLogger = BPOCLog.shared()?.loggerFoRequest
//        let eventLogger   = BPOCLog.shared()?.loggerForEvent
//
//        let logDirectory     = fileLogger.logFileManager.logsDirectory
//        let requestDirectory = requestLogger?.logFileManager.logsDirectory ?? ""
//        let eventDirectory   = eventLogger?.logFileManager.logsDirectory ?? ""
//
//        let requestZipPath   = requestDirectory + "/Request.zip"
//        let eventZipPath     = eventDirectory + "/Event.zip"
//        let logZipPath       = logDirectory + "/Log.zip"
//
//
//        if ((try? FileManager.default.removeItem(atPath: requestZipPath)) != nil) {
//            BPLog("删除Request Zip包成功")
//        } else {
//            BPLog("删除Reqeust Zip包失败")
//        }
//
//        if ((try? FileManager.default.removeItem(atPath: eventZipPath)) != nil) {
//            BPLog("删除Event Zip包成功")
//        } else {
//            BPLog("删除Evnet Zip包失败")
//        }
//
//        if ((try? FileManager.default.removeItem(atPath: logZipPath)) != nil) {
//            BPLog("删除Log Zip包成功")
//        } else {
//            BPLog("删除Log Zip包失败")
//        }
//    }
//
//    /// 删除日志文件
//    private func deleteFile() {
//        let requestLogger = BPOCLog.shared()?.loggerFoRequest
//        let eventLogger   = BPOCLog.shared()?.loggerForEvent
//
//        let requestLogFileList = requestLogger?.logFileManager.sortedLogFilePaths ?? []
//        let eventLogFileList   = eventLogger?.logFileManager.sortedLogFilePaths ?? []
//
//        requestLogFileList.forEach { (path) in
//            if ((try? FileManager.default.removeItem(atPath: path)) != nil) {
//                BPLog("删除Request日志成功")
//            } else {
//                BPLog("删除Request日志失败")
//            }
//        }
//        eventLogFileList.forEach { (path) in
//            if ((try? FileManager.default.removeItem(atPath: path)) != nil) {
//                BPLog("删除Even日志成功")
//            } else {
//                BPLog("删除Event日志失败")
//            }
//        }
//    }
}

