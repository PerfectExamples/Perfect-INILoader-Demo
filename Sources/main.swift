//
//  main.swift
//  Perfect-INILoader-Demo
//
//  Created by Rockford Wei on 2017-04-25.
//  Copyright © 2017 PerfectlySoft. All rights reserved.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2017 - 2018 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import INIParser

do {
  let ini = try INIParser("demo.ini")
  print(ini.anonymousSection["freeVar1"] ?? "")
  print(ini.anonymousSection["freeVar2"] ?? "")
  print(ini.sections["[owner]"]?["name"] ?? "")
  print(ini.sections["[owner]"]?["organization"] ?? "")
  print(ini.sections["[database]"]?["server"] ?? "")
  print(ini.sections["[database]"]?["port"] ?? "")
  print(ini.sections["[database]"]?["file"] ?? "")
  print(ini.sections["[汉化]"]?["变量1"] ?? "")
  print(ini.sections["[汉化]"]?["变量2"] ?? "")
}catch(let err) {
  print(err)
}
