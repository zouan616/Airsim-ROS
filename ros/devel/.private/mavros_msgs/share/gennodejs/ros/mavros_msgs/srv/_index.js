
"use strict";

let ParamGet = require('./ParamGet.js')
let FileRemove = require('./FileRemove.js')
let LogRequestData = require('./LogRequestData.js')
let FileRead = require('./FileRead.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let ParamPush = require('./ParamPush.js')
let FileOpen = require('./FileOpen.js')
let FileChecksum = require('./FileChecksum.js')
let FileClose = require('./FileClose.js')
let CommandTOL = require('./CommandTOL.js')
let WaypointClear = require('./WaypointClear.js')
let SetMavFrame = require('./SetMavFrame.js')
let LogRequestList = require('./LogRequestList.js')
let FileMakeDir = require('./FileMakeDir.js')
let CommandInt = require('./CommandInt.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let ParamPull = require('./ParamPull.js')
let FileWrite = require('./FileWrite.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let ParamSet = require('./ParamSet.js')
let WaypointPush = require('./WaypointPush.js')
let FileList = require('./FileList.js')
let FileTruncate = require('./FileTruncate.js')
let CommandBool = require('./CommandBool.js')
let CommandHome = require('./CommandHome.js')
let WaypointPull = require('./WaypointPull.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let SetMode = require('./SetMode.js')
let StreamRate = require('./StreamRate.js')
let FileRename = require('./FileRename.js')
let CommandLong = require('./CommandLong.js')

module.exports = {
  ParamGet: ParamGet,
  FileRemove: FileRemove,
  LogRequestData: LogRequestData,
  FileRead: FileRead,
  LogRequestEnd: LogRequestEnd,
  ParamPush: ParamPush,
  FileOpen: FileOpen,
  FileChecksum: FileChecksum,
  FileClose: FileClose,
  CommandTOL: CommandTOL,
  WaypointClear: WaypointClear,
  SetMavFrame: SetMavFrame,
  LogRequestList: LogRequestList,
  FileMakeDir: FileMakeDir,
  CommandInt: CommandInt,
  CommandTriggerControl: CommandTriggerControl,
  ParamPull: ParamPull,
  FileWrite: FileWrite,
  FileRemoveDir: FileRemoveDir,
  ParamSet: ParamSet,
  WaypointPush: WaypointPush,
  FileList: FileList,
  FileTruncate: FileTruncate,
  CommandBool: CommandBool,
  CommandHome: CommandHome,
  WaypointPull: WaypointPull,
  WaypointSetCurrent: WaypointSetCurrent,
  SetMode: SetMode,
  StreamRate: StreamRate,
  FileRename: FileRename,
  CommandLong: CommandLong,
};
