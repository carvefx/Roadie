class PointsController < ApplicationController
  
  
  # GET /calculate
  def calculate
    @points = Point.all
    @sections = Section.all
    # loop through all the points
    @points.each do |point|
    
      # calculate the ground elevation if none is already present
      if point.elevation.nil?
        
        # calculate and round to two decimals
        elev = point.d1 / point.d2 * point.height
        elev = (elev * 10**2).round.to_f / 10**2
        
        # save to the database
        point.elevation = elev
        point.save
              
        
      end
      
      # calculate the current kilmetric position
      
    # if point.kilometric_position.blank?
    #       
    #       previous_point = @points[@points.index(point)-1]
    #       @kilometric_position = '0+' + previous_point.distance.to_s
    # end     
      
    end
    
    


    @sections.each do |section|
      
      section_points_number = section.points.count
      section_length = section.length
      total_distance = 0
      
      # calculate total distance
      section.points.each do |point|
        total_distance += point.distance
      end
      @total_distance = total_distance
      # calculate total error for a section
      total_error = total_distance - section_length
      
      section.points.each do |point| 

          if point.distance_corrected.nil?      
    	          	    
    	      
    	      
    	      # calculate error for each point
    	      error = total_error / section_points_number
    	      error = (error * 10**2).round.to_f / 10**2
    	        	    
    	      # construct final variable
      	    point.distance_corrected = point.distance + error
      	    
      	    # exclude starting and final points for error calculation    	      
    	      if point.name.eql? "A" or point.name.eql? "B"
    	          section_points_number = section.points.count - 1
    	          point.distance_corrected = point.distance
    	      end
    	      
    	      # save to database
      	    point.save
      	    
      	    
  	      end
    	  end   	  	  
  	    
    end
    
    # return us to the index page
    # redirect_to(points_url, :notice => 'Elevation calculated')
  end
  
  # GET /points
  # GET /points.xml
  def index
    @points = Point.all
   
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @points }
    end
  end

  # GET /points/1
  # GET /points/1.xml
  def show
    @point = Point.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @point }
    end
  end

  # GET /points/new
  # GET /points/new.xml
  def new
    @point = Point.new
    @sections = Section.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @point }
    end
  end

  # GET /points/1/edit
  def edit
    @point = Point.find(params[:id])
    @sections = Section.all
  end

  # POST /points
  # POST /points.xml
  def create
    @point = Point.new(params[:point])

    respond_to do |format|
      if @point.save
        format.html { redirect_to(@point, :notice => 'Point added') }
        format.xml  { render :xml => @point, :status => :created, :location => @point }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /points/1
  # PUT /points/1.xml
  def update
    @point = Point.find(params[:id])
    
    respond_to do |format|
      if @point.update_attributes(params[:point])
        format.html { redirect_to(@point, :notice => 'Point was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /points/1
  # DELETE /points/1.xml
  def destroy
    @point = Point.find(params[:id])
    @point.destroy

    respond_to do |format|
      format.html { redirect_to(points_url) }
      format.xml  { head :ok }
    end
  end
end
