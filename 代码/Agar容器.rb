#!/usr/bin/env ruby -w
# encoding: UTF-8
class Agar容器
  attr_reader :长, :宽
  def initialize(长, 宽)
    @长, @宽, @Agar数组 = 长, 宽, []
    @父界面 = TK主界面.新建("Agar", 600, 400)
    @画布 = TK画布.新建(@父界面, @长, @宽, true)
    @画布.背景色 = 'green'
  end
  def 添加(agar)
    agar.生成精灵(@画布, 随机(@长), 随机(@宽))
    @Agar数组 << agar
  end
  def 数量;@Agar数组.数量 end
  def 可视化;K可视化模块.后台运行 end
  def 运行
    可视化
    限帧器, 帧数计算器 = C限帧器.新建(Agar配置.最高帧数), C帧数计算器.新建{|帧数| 输出 帧数}
    loop do
      @Agar数组.每个{|agar| agar.运动}
      限帧器.调用
      帧数计算器.调用
      break if (S键盘.CTRL? && S键盘.A?)
    end
  end
  #~ include Enumerable
  #~ def each;@Agar数组.每个{|agar| yield(Agar)} end
end

定义测试集 'Agar容器测试' do
  初始化 {@容器 = Agar容器.新建(500, 500)}
  
  添加测试 'Agar添加测试' do
    添加数量 = 随机(500)
    添加数量.次{@容器.添加(Agar.新建)}
    @容器.数量.应该为 添加数量
  end
end