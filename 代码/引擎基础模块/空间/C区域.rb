﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'D二维单域网格'
class C区域 < D矩形区域
  def 初始化(名称, 长, 宽, 网格配置)#网格配置: {体: {网格边长: 10}, 场: {网格边长: 100}}
    @名称, @长, @宽, @网格哈希 = 名称, 长, 宽, {}
    super(D二维点.新建(0, 0), D二维点.新建(@长, @宽))
    网格配置.每对{|元素种类名, 配置| 添加网格(元素种类名, @长, @宽, **配置)}
  end
  def 添加网格(元素种类名, 长, 宽, 网格边长: 10)
    网格 = D二维单域网格.新建(D二维点.新建(长,宽), 长 / 网格边长, 宽 / 网格边长)
    @网格哈希[元素种类名] = 网格
    添加对应方法(元素种类名.字符串化, 网格)
  end
  def 网格(元素种类名);@网格哈希[元素种类名] end
  C区域操作方法关键字 = %w(添加 刷新 删除 判断相交 判断包围)
  def 区域操作方法哈希(种类名)
    @区域操作方法哈希 ||= {}
    return @区域操作方法哈希[种类名] if @区域操作方法哈希.含有键?(种类名)
    原始哈希数据 = C区域操作方法关键字.外转置(C网格支持方法前缀).重整
    映射哈希数据 = R哈希[*原始哈希数据].收集并重整{|关键字, 前缀| ["@区域#{关键字}方法", 前缀 + 种类名.字符串化]}.收集(&:符号化)
    @区域操作方法哈希[种类名] = R哈希[*映射哈希数据]
  end
  def 辐射留存率;1.0 end
  私有
  C网格支持方法前缀 = %w(添加 刷新 删除 每个相交 每个被包围)
  def 添加对应方法(元素种类名, 网格)
    C网格支持方法前缀.收集{|方法前缀| [方法前缀 + 元素种类名, 网格.方法(方法前缀 + '元素')]}.每个 do |方法名, 调用方法|
      定义单例方法(方法名){|参数, &块| 调用方法.调用(参数, &块)}
    end
  end
end
