﻿#!/usr/bin/env ruby -w
# encoding: UTF-8
需要 'C限帧器'
class C琼脂
  可读属性 :宽, :高
  def 初始化(宽, 高)
    @宽, @高, @细胞数组 = 宽, 高, []
    @限帧器 = C限帧器.新建($琼脂配置.最高帧数)
    @父界面 = Tk主界面.创建("琼脂", 宽 + 20, 高 + 60, 100, 80)
    @帧数显示 = Tk标签.新建(@父界面).打包
    @利用率显示 = Tk标签.新建(@父界面).打包
    @中点坐标显示 = Tk标签.新建(@父界面).打包
    @画布 = Tk画布.创建(@父界面, 宽, 高).打包
    @画布.背景色 = 'gray'
    @画布.设置卷动增量(1, 1)
  end
  def 添加(细胞, 是否跟踪 = false)
    细胞.生成精灵(@画布, 随机(@宽), 随机(@高))
    @细胞数组 << 细胞
    @跟踪对象 = 细胞 if 是否跟踪
  end
  def 细胞数量;@细胞数组.数量 end
  def 可视化;Tk.后台运行 end
  def 运行
    可视化
    @限帧器.调用
    @限帧器.限帧 do
      细胞运动
      Tk.延迟显示 do
        刷新细胞
        画面卷动
        刷新监视变量
      end
      break if 退出判断
    end
    暂停 0.5
  end
  def 细胞运动;@细胞数组.每个{|细胞| 忽略错误{细胞.运动}} end
  def 刷新细胞;@细胞数组.每个{|细胞| 忽略错误{细胞.刷新}} end
  def 画面卷动;@画布.卷动((@跟踪对象.坐标 - 中点画布坐标).整数化) end
  def 中点画布坐标;D二维点.新建(@画布.画布x(@宽 / 2), @画布.画布y(@高 / 2)) end
  def 刷新监视变量
    @帧数显示.文本 = 格式化("%.2f", @限帧器.当前帧数)
    @利用率显示.文本 = 格式化("%.2f%%", @限帧器.当前利用率 * 100)
    @中点坐标显示.文本 = 中点画布坐标.字符串
  end
  def 退出判断;S键盘.ESCAPE? end
  #~ include Enumerable
  #~ def each;@细胞数组.每个{|细胞| yield(细胞)} end
end

定义测试集 '琼脂测试' do
  测试初始化 {@琼脂 = C琼脂.新建(500, 500)}
  
  添加测试 '细胞添加测试' do
    添加数量 = 随机(50)
    添加数量.次{@琼脂.添加(C细胞.新建)}
    @琼脂.细胞数量.应该为 添加数量
  end
end