#
# Cookbook Name:: chef_hdfs
# Recipe:: default
#
# Default recipe for chef_hdfs cookbook
#
# Author: Biju Nair
# Github: https://github.com/bijugs
#
# License
# =======
#
# [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0)
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either expressed or implied. See the license for the specific
# language governing permissions and limitations under the license.
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

gem_package "webhdfs" do
    version ">=0.0.0"
    action :nothing
end.run_action(:install)
