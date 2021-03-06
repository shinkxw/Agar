﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'S键盘'
需要 'D二维点'
class C琼脂
  可读属性 :长, :宽
  def 初始化(长, 宽)
    @长, @宽 = 长, 宽
    @时间轴 = C时间轴.新建('琼脂')
    @区域 = C区域.新建('琼脂', 长, 宽, {体: {网格边长: 200}, 场: {网格边长: 1000}})
  end
  def 添加(对象, 对象类型, 坐标 = 随机坐标);对象类型.创建(对象, 时间轴: @时间轴, 区域: @区域, 坐标: 坐标) end
  def 添加卵(坐标 = 随机坐标);添加细胞(C细胞.新建('卵', $琼脂配置.卵质量, 10000), 坐标) end
  def 添加细胞(细胞, 坐标 = 随机坐标);C细胞代理对象.新建(细胞, @时间轴, @区域, 坐标) end
  def 时间同步(同步比例 = 0.001, 同步频率 = 80);添加时间对象(C时间同步器.新建(同步比例, 同步频率)) end
  def 效率计算(计算时差 = 1000);添加时间对象(C效率计算器.新建(计算时差)) end
  def 卵刷新设置(密度, 周期);添加时间对象(C卵刷新器.新建(密度, 周期, @区域, 方法(:添加卵))) end
  def 添加时间对象(时间对象);C时间代理对象.新建(时间对象, @时间轴) end
  def 随机坐标;D二维点.新建(随机(长),随机(宽)) end
  def 运行
    @时间轴.运行 do |当前时间, 当前对象|
      #输出 当前时间
      break if S键盘.按下过ESC?
    end
  end
end
