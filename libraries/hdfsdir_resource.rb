#
#  Chef HWRP resource for hdfs directory resource
#
#  Author: Biju Nair
#  Github: https://github.com/bijugs
#
#  License
#  =======
#
#  [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0)
#
#  Unless required by applicable law or agreed to in writing, software distributed
#  under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
#  CONDITIONS OF ANY KIND, either expressed or implied. See the license for the specific
#  language governing permissions and limitations under the license.
#
class Chef
  class Resource
    class HdfsDir < Chef::Resource

      #
      # What provider this resource provides
      #
      provides :hdfsdir

      #
      # initialize method
      #
      def initialize(name, run_context=nil)
        super
        #
        # Set the resource name
        #
        @resource_name = :hdfsdir
        #
        # Allowed actions in this resource
        #
        @allowed_actions = [:create, :delete, :chown, :chmod, :rename, :chgrp]
        #
        # Default action if none specified when using the resource
        #
        @action = :create
        #
        # Set default values for resource attributes
        @path = name
        @namenode = nil
        @nnport = nil
        @user = nil
        @mode = nil
        @tuser = nil
        @tgroup = nil
        @tpath = nil

      end
      
      #
      # Methods to get/set attributes and define additional characteristics
      #
      def path(arg=nil)
        set_or_return(:path, arg, :kind_of => String, :required => true)
      end

      def namenode(arg=nil)
        set_or_return(:namenode, arg, :kind_of => String, :required => true)
      end

      def nnport(arg=nil)
        set_or_return(:nnport, arg, :kind_of => String, :required => true)
      end

      def user(arg=nil)
        set_or_return(:user, arg, :kind_of => String, :required => false)
      end

      def mode(arg=nil)
        set_or_return(:mode, arg, :kind_of => String, :required => false)
      end

      def tuser(arg=nil)
        set_or_return(:tuser, arg, :kind_of => String, :required => false)
      end

      def tgroup(arg=nil)
        set_or_return(:tgroup, arg, :kind_of => String, :required => false)
      end

      def tpath(arg=nil)
        set_or_return(:tpath, arg, :kind_of => String, :required => false)
      end

    end
  end
end
