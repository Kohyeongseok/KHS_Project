package joeun.project.service;

import java.util.List;

import joeun.project.dto.API_cat_code;
import joeun.project.dto.BolgguriViewDto;
import joeun.project.dto.GpsPoint;
import joeun.project.dto.Location;

public interface LocationService {

	List<BolgguriViewDto> getNearbyLocations(double d, double e, double radius);

	List<BolgguriViewDto> getAllGpsPoints();

	List<API_cat_code> selectBolgguriCat();

	List<API_cat_code> selectMukgguriCat();

	List<BolgguriViewDto> getNearbyMukgguri(double x, double y, double d);

}
