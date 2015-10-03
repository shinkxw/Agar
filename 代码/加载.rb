#!/usr/bin/env ruby -w
# encoding: UTF-8
根路径 = File.dirname(__FILE__)

忽略错误 do
  加载模块('Tk')
  注册模块('Agar', 根路径, true)
end

