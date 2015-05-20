#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  容器 = Agar容器.新建(300, 300)
  玩家 = Agar.新建('Shink')
  容器.添加(玩家)
  容器.运行
  T测试框架.执行所有测试集
end
