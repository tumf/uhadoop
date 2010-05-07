#!/usr/bin/env ruby
# vim:set fileencoding=utf-8:
require 'unit_hosting'


class ClusterManger
  attr_reader :nodes, :master, :slave, :clusters, :slaves, :group
  def clear_vars
    @nodes = nil
    @master = nil
    @slave = nil
    @clusters = Array.new
    @slaves = Array.new
  end
  def initialize server_group
    @group = UnitHosting::VmGroup.load(server_group)
    update
  end
  def update
    @vms = @group.vms
    clear_vars
    @vms.each do |instance_id,vm|
      @master = vm if vm.display_name == "master"
      @slave = vm if vm.display_name == "slave"
      @clusters << vm if vm.display_name == "slave-cluster"
    end
    @slaves = @clusters.clone
    @slaves << slave
    @nodes = @slaves.clone
    @nodes << @master
  end
end
