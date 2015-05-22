#!/usr/bin/env ruby -w
# encoding: UTF-8
根路径 = File.dirname(__FILE__)

忽略错误 do
  注册模块('Agar', 根路径, true)
  
  加载模块('可视化')
end

