$fn = 50;


difference() {
	union() {
		hull() {
			translate(v = [-17.0000000000, 17.0000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [17.0000000000, 17.0000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [-17.0000000000, -17.0000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
			translate(v = [17.0000000000, -17.0000000000, 0]) {
				cylinder(h = 9, r = 5);
			}
		}
		translate(v = [-12.0000000000, -22.0000000000, 23]) {
			cube(size = [34, 34, 6]);
		}
		translate(v = [0.5000000000, -22.0000000000, 23]) {
			cube(size = [14, 44, 6]);
		}
		translate(v = [-22.0000000000, -14.5000000000, 23]) {
			cube(size = [44, 14, 6]);
		}
		translate(v = [-7.5000000000, 28.5000000000, 0]) {
			linear_extrude(height = 3) {
				text(font = "Segoi UI Black:style=Bold", halign = "center", size = 15, text = "O", valign = "center");
			}
		}
	}
	union() {
		translate(v = [-15, -7.5000000000, 0]) {
			rotate(a = [0, 180, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -29.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -29.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -29.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -29.0000000000]) {
							cylinder(h = 29, r = 1.5000000000);
						}
						#translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						#translate(v = [0, 0, -29.0000000000]) {
							cylinder(h = 29, r = 1.8000000000);
						}
						#translate(v = [0, 0, -29.0000000000]) {
							cylinder(h = 29, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [7.5000000000, 15, 0]) {
			rotate(a = [0, 180, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -29.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -29.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -29.0000000000]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#linear_extrude(height = 2.5000000000) {
											polygon(points = [[3.4620000000, 0.0000000000], [1.7310000000, 2.9981799479], [-1.7310000000, 2.9981799479], [-3.4620000000, 0.0000000000], [-1.7310000000, -2.9981799479], [1.7310000000, -2.9981799479]]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, -0.3000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, -0.6000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -3.2500000000, 2.5000000000]) {
											cube(size = [3.5000000000, 6.5000000000, 0.3000000000]);
										}
										#translate(v = [-1.7500000000, -1.7500000000, 2.8000000000]) {
											cube(size = [3.5000000000, 3.5000000000, 0.3000000000]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -29.0000000000]) {
							cylinder(h = 29, r = 1.5000000000);
						}
						#translate(v = [0, 0, -1.9000000000]) {
							cylinder(h = 1.9000000000, r1 = 1.8000000000, r2 = 3.6000000000);
						}
						#translate(v = [0, 0, -29.0000000000]) {
							cylinder(h = 29, r = 1.8000000000);
						}
						#translate(v = [0, 0, -29.0000000000]) {
							cylinder(h = 29, r = 1.5000000000);
						}
					}
					union();
				}
			}
		}
		translate(v = [-12.0000000000, -32.0000000000, 3]) {
			cube(size = [44, 44, 6]);
		}
		translate(v = [7.5000000000, 0, 3]) {
			hull() {
				translate(v = [-2.5000000000, 32.0000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
				translate(v = [2.5000000000, 32.0000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
				translate(v = [-2.5000000000, -32.0000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
				translate(v = [2.5000000000, -32.0000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
			}
		}
		translate(v = [0, -7.5000000000, 3]) {
			hull() {
				translate(v = [-32.0000000000, 2.5000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
				translate(v = [32.0000000000, 2.5000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
				translate(v = [-32.0000000000, -2.5000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
				translate(v = [32.0000000000, -2.5000000000, 0]) {
					cylinder(h = 6, r = 5);
				}
			}
		}
		translate(v = [-15.0000000000, 15.0000000000, 0]) {
			cylinder(h = 29, r = 3.2500000000);
		}
		translate(v = [0.0000000000, -15.0000000000, 0]) {
			cylinder(h = 29, r = 3.2500000000);
		}
		translate(v = [15.0000000000, -15.0000000000, 0]) {
			cylinder(h = 29, r = 3.2500000000);
		}
		translate(v = [15.0000000000, 0.0000000000, 0]) {
			cylinder(h = 29, r = 3.2500000000);
		}
		translate(v = [-15.0000000000, -7.5000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [-15.0000000000, 7.5000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [-7.5000000000, -15.0000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [-7.5000000000, 0.0000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [-7.5000000000, 15.0000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [0.0000000000, -7.5000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [0.0000000000, 7.5000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [7.5000000000, -15.0000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [7.5000000000, 0.0000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [7.5000000000, 15.0000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [15.0000000000, -7.5000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [15.0000000000, 7.5000000000, 0]) {
			cylinder(h = 29, r = 1.8000000000);
		}
		translate(v = [250, -459.6000000000, 0]) {
			rotate(a = [0, 0, 45]) {
				cube(size = [500, 500, 500]);
			}
		}
		translate(v = [250, -459.6000000000, 0]) {
			rotate(a = [0, 0, 45]) {
				cube(size = [500, 500, 500]);
			}
		}
		translate(v = [250, -459.6000000000, 0]) {
			rotate(a = [0, 0, 45]) {
				cube(size = [500, 500, 500]);
			}
		}
	}
}