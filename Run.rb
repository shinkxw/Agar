#!/usr/bin/env ruby -w
# encoding: UTF-8
require 'E:/RubyCode/SCRF/加载'
require 'E:/RubyCode/Agar/代码/加载'

忽略错误 do
  容器 = Agar容器.新建(1000, 1000)
  玩家 = Agar.新建('Shink')
  容器.添加(玩家)
  
  父界面 = TK主界面.新建("测试", 600, 800)
  画布 = TK画布.新建(父界面, 300, 400, true)
  K可视化模块.后台运行
  暂停(2);画布.背景色 = 'red';暂停(1)
  
  T测试框架.执行所有测试集
end
