#!/usr/bin/env ruby -w
# encoding: UTF-8
require_relative '../SCRF/加载'
require_relative '代码/加载'
#需要 '性能分析'

忽略错误 do
  琼脂 = C琼脂.新建(1600, 900)
  琼脂.添加细胞(C细胞.新建('Shink', 1000, 40, 'red', C细胞主视角控制器.新建), D二维点.新建(200, 100))
  200.次{琼脂.随机添加卵}
  琼脂.时间同步(0.001, 80)
  #琼脂.效率计算
  琼脂.运行
  #~ R单元测试.执行#(['-v'])
end

