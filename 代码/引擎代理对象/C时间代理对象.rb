﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要类 'C代理对象'
class C时间代理对象 < C代理对象
  包含模块 M时间轴事件优先队列
  支持 :销毁
  def self.创建(对象, **参数);新建(对象, 参数[:时间轴]) end
  def 初始化(对象, 时间轴)
    super(对象)
    挂载时间轴(时间轴)
    @对象.初始事件.每个{|事件| 添加事件(事件)}
  end
  def 执行当前事件
    执行事件(获得当前事件)
    return if 已被销毁?
    @对象.获取追加事件.每个{|事件| 添加事件(事件)}
    没有事件? ? 脱离时间轴 : 下滤
  end
  def 执行事件(事件)
    if 类.支持?(事件.名称)
      调用(事件.名称, 事件)
    elsif @对象.响应?(事件.名称)
      @对象.调用(事件.名称, *事件.内容)
    else
      引发异常('代理对象异常',"事件#{事件.名称}未找到可执行者")
    end
  end
  def 销毁(事件)
    super(事件)
    脱离时间轴
  end
end
