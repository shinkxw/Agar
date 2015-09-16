#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  琼脂 = C琼脂.新建(600, 400)
  玩家 = C细胞.新建('Shink', 16, 'red')
  玩家2 = C细胞.新建('Shink2', 500, nil, C细胞随机控制器.新建)
  琼脂.添加(玩家, true)
  琼脂.添加(玩家2)
  琼脂.运行
end
