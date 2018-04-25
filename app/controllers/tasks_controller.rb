class TasksController < ApplicationController
      before_action :find_warloc

      def create
            @task = @warehouse_locations.task.create(params[:tasks].permit(:item2, :quantity2, :warehouse_location_id))
            @task.save

            if @task.save
                  redirect_to warehouse_location_path(@warehouse_location)
            else
                  render "new"
            end
      end


      private
      
      def find_warloc
            @warehouse_location = WarehouseLocation.find(params[:warehouse_locations_id])
      end
end 
