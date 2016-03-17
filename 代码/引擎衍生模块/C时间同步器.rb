﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
class C时间同步器
  包含模块 M代理控制反转
  可读属性 :同步比例, :同步频率
  def 初始化(同步比例 = 0.001, 同步频率 = 80)
    @同步比例, @同步频率 = 同步比例, 同步频率
    @时间轴时差 = (1.0 / 同步比例 / 同步频率).整数化
  end
  
  初始化执行 do
    添加初始事件(C时间轴事件.新建(:开始同步))
  end
  
  def 开始同步
    @累计时差, @起始时间 = 0, R时间.现在
    追加事件(C时间轴事件.新建(:同步, @时间轴时差))
  end
  def 同步
    @累计时差 += @时间轴时差
    预计时间差值 = @累计时差 * @同步比例
    实际时间差值 = R时间.现在 - @起始时间
    if 实际时间差值 < 预计时间差值
      暂停时间 = 预计时间差值 - 实际时间差值
      if 暂停时间 > 0.01
        暂停(暂停时间 - 0.005)
      elsif 暂停时间 > 0.003
        暂停(暂停时间)
      end
    end
    追加事件(C时间轴事件.新建(:同步, @时间轴时差))
  end
  def 名称;'时间同步器' end
end
