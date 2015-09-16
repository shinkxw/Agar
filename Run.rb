#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'

忽略错误 do
  琼脂 = C琼脂.新建(800, 500)
  琼脂.添加(C细胞.新建('Shink', 500, 'red', C细胞键盘控制器.新建), true)
  琼脂.添加(C细胞.新建('Shink2', 100000, nil, C细胞随机控制器.新建))
  琼脂.添加(C细胞.新建('r1'))
  琼脂.添加(C细胞.新建('r2'))
  琼脂.运行
end
