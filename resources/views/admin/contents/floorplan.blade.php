@extends('admin.admin-dashboard')

@section('links')
    <meta charset="utf-8" />
    <title>Dashboard | Exousia Navi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/favicon.ico') }}">

    {{-- toast css --}}
    <link rel="stylesheet" type="text/css" href="{{ asset('backend/assets/libs/toastr/build/toastr.min.css') }}">
    <!-- jquery.vectormap css -->
    <link href="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }}"
        rel="stylesheet" type="text/css" />

    <!-- DataTables -->
    <link href="{{ asset('backend/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet"
        type="text/css" />

    <!-- Responsive datatable examples -->
    <link href="{{ asset('backend/assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }}"
        rel="stylesheet" type="text/css" />

    <!-- Bootstrap Css -->
    <link href="{{ asset('backend/assets/css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet"
        type="text/css" />
    <!-- Icons Css -->
    <link href="{{ asset('backend/assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ asset('backend/assets/css/app.min.css') }}" id="app-style" rel="stylesheet" type="text/css" />

    <style>
        .drag-container::-webkit-scrollbar{
            display: none;
        }
        .drag-container{
            max-height: inherit;
            padding: 10px;
            overflow-y: auto; /* Enable vertical scrollbar if content overflows */
            /* border: 1px solid gray; */
            /* max-width: 200px; */
            padding:10px ;
        }
            /* Style for the draggable box */
        .drag-item {
            width: 60px;
            height: 60px;
            word-break: break-all; /* Break long words */
            text-align: center;
            /* background-color: #ffc107; Yellow background for draggable item */
            border: 1px solid #999;
            box-shadow: rgba(10, 10, 10, 0.1) 0px 2px 4px, rgba(0, 0, 0, 0.5) 0px 7px 13px -3px, rgba(0, 0, 0, 0.5) 0px -3px 0px inset;
            font-weight: 600;
            text-shadow: 2px 2px 3px rgba(7, 7, 7, 0.8);
            display: flex;
            
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif; /* Specify a common font */
            font-size: 15px; /* Adjust font size */
            color: #f5e8e8; /* Text color */
            cursor: grab; /* Change cursor when dragging */
            position: relative;
            /* z-index: 2001; */
            transition: transform 0.2s ease-in-out; /* Add a transition for the transform property */
        }

        /* .is-dragging {
            scale: 1.05;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.25);
            background: rgb(50, 50, 50);
            color: white;
        } */

        .zone.dragover {
            /* Add a shadow style when dragging over */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Customize the shadow style */
            transform: scale(1.1); /* Apply a scale transformation on hover */
            border-color: #f0eded;
        }
        .drag-item:hover{
            transform: scale(1.1); /* Apply a scale transformation on hover */
            /* z-index: 3000; */
        }

      /* Style for the draggable box container */
        .drag-content {
            position: relative;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 12px;
            z-index: 1;
        }

        /* Style for the cancel button (X) */
        .cancel-drag-button {
            background: transparent;
            border: 1px solid red;
            /* border-radius: 5px; */
            background-color: red;
            color: #f3ecec;
            font-size: 10px;
            cursor: pointer;
            position: absolute;
            top: -1px;
            right: -1px;
            /* display: none;  */
        }


      /* Style for the grid container */
      .grid-container {
        padding: 10px;
        width: fit-content; /* Adjust the width of the floorplan */
        height: fit-content; /* Adjust the height of the floorplan */
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        /* margin: 50px auto; */
        display: grid;
        grid-template-columns: repeat(14, 1fr); /* Adjust the number of columns */
        grid-template-rows: repeat(10, 1fr); /* Adjust the number of rows */
        gap: 5px; /* Adjust the gap between rooms */
        background-color: transparent; /* Background color for the floorplan */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
        border-radius: 10px; /* Add rounded corners */
        perspective: 1000px; /* Create perspective for 3D effect */
        /* z-index: 1000; */
        
      }

      /* Style for each room (grid point) */
      .grid-point {
        width: 60px;
        height: 60px;
        background-color: transparent; /* Light background color for rooms */
        border: 1px solid rgba(0, 0, 0, 0.1);
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, sans-serif; /* Specify a common font */
        font-size: 15px; /* Adjust font size */
        color: #f3ecec; /* Text color */
        position: relative;
        transition: transform 0.3s ease-in-out; /* Add smooth transform transition */
        transform-style: preserve-3d; /* Preserve 3D effect */
        /* z-index: 1; */
      }

      /* Add 3D effect on hover */
      .grid-point:hover {
        transform: translateZ(
          10px
        ); /* Translate along the Z-axis to create elevation */
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
      }

      /* Style for the walls (blocks) */
      .block {
        /* background-color: #999; Dark background color for walls */
        box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
        color: white;
        font-size: 14px;
      }

      /* Style for the walls (starting points) */
      .starting-point {
        /* background-color: #034d07; Dark background color for walls */
        box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
        color: green;
        font-size: 15px;
      }

      #stair-point{
        color: yellow;
      }
      .grid-point.block::after {
        content: attr(
          data-label
        ); /* Set the content to the data-label attribute */
      }

      /* Style for animation */
      .grid-point.passed {
        background-color: transparent; /* Dark green for passed rooms */
        color: white;
        animation: animatePath 4s linear infinite; /* Animation settings */
      }

      /* Define the animation */
      @keyframes animatePath {
        0% {
            border: none;
            color: #06df59;
          /* background-color: green; */
          /* transform: translateZ(2px); Translate along the Z-axis to create elevation */
          box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
        }
        25% {
          /* background-color: rgb(11, 196, 66); */
          /* transform: translateZ(20px); Translate along the Z-axis to create elevation */
          box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
        }
        50% {
          /* background-color: rgb(15, 226, 61); */
          /* transform: translateZ(5px); Translate along the Z-axis to create elevation */
          box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
        }
        75% {
          /* background-color: rgb(32, 88, 209); */
          /* transform: translateZ(15px); Translate along the Z-axis to create elevation */
          box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
        }
        100% {
          /* background-color: green; */
          /* transform: translateZ(10px); Translate along the Z-axis to create elevation */
          box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow */
        }
      }

        /* Define the CSS for the selected grid points */
        .wall {
            background-color: #ccc; /* Set the background color for the grid points */
            /* width: 10px; */
            /* margin: auto; */
            /* height: 20px; Set the height of each grid point */
            display: inline-block; /* Display the grid points in a row */
            /* margin: 2px; */
            border: 2px solid #fff; /* Add a border to each grid point */
        }
    
        /* CSS for horizontal selection */
        /* .horizontal-selection {
            border-top: none; 
            border-bottom: none; 
        } */

        /* Style for the first selected grid point */
        /* .horizontal-selection:first-child {
            border-top: 2px solid #fff;
        } */

        /* Style for the last selected grid point */
        /* .horizontal-selection-last {
            border-bottom: 2px solid #fff;
        } */

        /* Style for horizontal selection excluding first and last
        .horizontal-selection:not(.horizontal-selection:first-child):not(.horizontal-selection-last) {
            gap: 0;
        } */

        /* CSS for horizontal selection */
        /* .vertical-selection {
            border-left: none;
            border-right: none;
        } */

        /* Style for the first selected grid point */
        /* .vertical-selection:first-child {
            border-left: 2px solid #fff;
        } */

        /* Style for the last selected grid point */
        /* .vertical-selection-last {
            border-right: 2px solid #fff;
        } */

        /* CSS for horizontal selection */
        /* .combined-selection {
            border-left: none; 
            border-right: none;
        } */

    </style>
@endsection

@section('content')
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Dashboard</h4>

                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">Exousia Navi</a></li>
                                <li class="breadcrumb-item active">Floor Plan Layouts</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="card">
                    <div class="card-body">

                        <div class="dropdown float-end">
                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                <i class="mdi mdi-dots-vertical"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <!-- item-->
                                <a href="{{ route('dashboard') }}" class="dropdown-item">Dashboard</a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Teacher's</a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Facilities</a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">Event's</a>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-xl-3">
                                <h4 class="card-title mb-4">
                                    <i class="ri-checkbox-blank-circle-fill font-size-10 text-success align-middle me-2"></i>
                                    Floor Selection
                                </h4>
                                <h6 class="font-size-13">
                                    <div class="input-group d-flex align-items-center text-success">
                                        <select id="floor-selected" class="form-control text-white mt-2">
                                            <option value="ground-floor">Ground Floor</option>
                                            @php
                                                for ($i = 1; $i <= 10; $i++) { 
                                                    echo "<option value='floor-$i'>$i" . ($i == 1 ? 'st' : ($i == 2 ? 'nd' : ($i == 3 ? 'rd' : 'th'))) . " Floor</option>";
                                                }
                                            @endphp
                                        </select>
                                    </div>
                                </h6>
                            </div>

                            <div class="col-xl-3">
                                <h4 class="card-title mb-4">
                                    <i class="ri-checkbox-blank-circle-fill font-size-10 text-success align-middle me-2"></i>
                                    Row Field
                                </h4>
                                <h6 class="font-size-13">
                                    <div class="input-group d-flex align-items-center text-success">
                                        <input type="number" id="row-size" value="8" min="1" max="20" class="form-control text-white mt-2"
                                        placeholder="add columns">
                                    </div>
                                </h6>
                            </div>

                            <div class="col-xl-3">
                                <h4 class="card-title mb-4">
                                    <i class="ri-checkbox-blank-circle-fill font-size-10 text-success align-middle me-2"></i>    
                                    Column Field
                                </h4>
                                <h6 class="font-size-13">
                                    <div class="input-group d-flex align-items-center text-success">
                                        <input type="number" id="column-size" value="14" min="1" max="20" class="form-control text-white mt-2"
                                        placeholder="add columns">
                                    </div>
                                </h6>
                            </div>

                            <div class="col-xl-3">
                                <button class="btn btn-secondary mt-5" id="apply-grid-size">Resize Floor Layout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
        
                <div class="col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title mb-4">
                                <i class="ri-checkbox-blank-circle-fill font-size-10 text-success align-middle me-2"></i>
                                Available Facilities
                            </h4>
                            <div class="table-responsive row align-items-center" id="con">
                                
                                {{-- starting point --}}
                                <div class="col-sm-12 row drag-container">
                                    <div class="col-xl-12">
                                        <h6 class="font-size-13">
                                            <div class="input-group d-flex align-items-center text-success">
                                                <input type="text" id="drag-search" class="form-control text-white"
                                                placeholder="Search Facilities">
                                            </div>
                                        </h6>
                                    </div>
                                    <div class="col-sm-2 mb-2 mx-auto drag-item wall-point blocked" id="wall-point" data-name="wall" data-label="wall" draggable="true">
                                        <div class="drag-content">
                                            {{ __('Wall') }}
                                        </div>
                                    </div>

                                    <div class="col-sm-2 mb-2 mx-auto drag-item starting-point" id="starting-point" data-name="start" data-label="front" draggable="true">
                                        <div class="drag-content">
                                            {{ __('lobby') }}
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-2 mb-2 mx-auto drag-item stair-point" id="stair-point" data-name="start" data-label="stair-in" draggable="true">
                                        <div class="drag-content">
                                            {{ __('Stair') }}
                                        </div>
                                    </div>

                                
                                    @foreach ($facilities as $facility)
                                        {{-- {{ $facility }} --}}
                                    <div class="col-sm-2 border mx-auto mb-2 drag-item start" id="{{ $facility->facilities }}" data-name="start" data-label="{{ $facility->facilities }}" data-id="{{ $facility->id }}" data-floor="{{ $facility->floor }}" draggable="true">
                                        <div class="drag-content">
                                            {{ $facility->facilities }}
                                        </div>
                                    </div>
                                    
                                    @endforeach
                        

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-9">
                    <div class="card">
                        <div class="card-body">
                            {{-- {{ $facilities }} --}}
                            <h4 class="card-title mb-4">
                                <i class="ri-checkbox-blank-circle-fill font-size-10 text-success align-middle me-2"></i>
                                Floor Plan Layout
                            </h4>

                            <div class="table-responsive row align-items-center" id="con">
                                
                                <div class="col-sm-12 mx-auto mb-2 grid-container" id="grid-container">
                                        <!-- Points will be dynamically generated here -->
                                </div>
                                <button class="btn btn-secondary float-end" id="run-dijkstra">Save Floor Plan</button>
                                {{-- <div class="col-xl-12">
                                    <button class="btn btn-secondary float-end" id="run-dijkstra">Save Floor Plan</button>
                                </div> --}}
                                {{-- <div class="col-xl-6">
                                    <button class="btn btn-secondary" id="merge-grid">Merged Box</button>
                                </div> --}}
                
                                  
                            </div>
                        </div><!-- end card -->
                    </div><!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

           
            <!-- end row -->
        </div>

    </div>
@endsection

@section('scripts')
    <!-- JAVASCRIPT -->

    <script src="{{ asset('backend/assets/libs/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/metismenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/simplebar/simplebar.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/node-waves/waves.min.js') }}"></script>


    <!-- apexcharts -->
    {{-- <script src="{{ asset('backend/assets/libs/apexcharts/apexcharts.min.js') }}"></script> --}}

    <!-- jquery.vectormap map -->
    <script src="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js') }}">
    </script>
    <script src="{{ asset('backend/assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js') }}">
    </script>

    <!-- Required datatable js -->
    <script src="{{ asset('backend/assets/libs/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Responsive examples -->
    <script src="{{ asset('backend/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('backend/assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js') }}">
    </script>

    {{-- <script src="{{ asset('backend/assets/js/pages/dashboard.init.js') }}"></script> --}}

    <!-- toastr plugin -->
    <script src="{{ asset('backend/assets/libs/toastr/build/toastr.min.js') }}"></script>
    <!-- toastr init -->
    <script src="{{ asset('backend/assets/js/pages/toastr.init.js') }}"></script>
    <!-- App js -->
    <script src="{{ asset('backend/assets/js/app.js') }}"></script>

    <script src="https://cdn.jsdelivr.net/npm/interactjs@1.10.10/dist/interact.min.js"></script>
    {{-- custom --}}
    <script>
       $(document).ready(function(){
            // Initial page load
            filterFacilitiesByFloor($('#floor-selected').val());

            const gridContainer = $("#grid-container");
            let gridPoints = [];
            let isDragging = false;
            let startingPoint;
            let details;
            // Function to create and append points to the grid
            function createGridPoints(width, height, gridDetails) {
                gridPointWidth = width;
                gridPointHeight = height;
                gridContainer.empty(); // Clear the existing grid using jQuery
                // change it if you have same level like 10x10 you change it to y first loop as height
                for (let x = 0; x < width; x++) {
                    for (let y = 0; y < height; y++) {
                        const point = $("<div></div>"); // Create a new div element using jQuery
                        point.addClass("grid-point");
                        point.attr("data-x", x); // Set x-coordinate as a data attribute
                        point.attr("data-y", y); // Set y-coordinate as a data attribute
                        point.addClass("zone")
                        // point.text(`${x},${y}`); // Optionally, you can label points with their coordinates


                        if(gridDetails !== 'null'){
                            // Find the corresponding grid detail by matching x and y coordinates
                            const gridDetail = gridDetails.find(detail => detail.x === x && detail.y === y);

                            if (gridDetail && gridDetail.label !== null) {
                                point.text(gridDetail.label); // Set the label as the text of the point
                                point.addClass('block')
                                const closeButton = $("<button>").addClass("cancel-drag-button").text("X");
                                point.append(closeButton)
                                closeButton.on("click", function (e) {
                                    $(point).removeClass("block").removeAttr("data-label");
                                    $(this).remove();
                                    $(point).css({'border':'1px solid rgba(0, 0, 0, 0.1)'})
                                    point.text("");
                                });
                            }
                        }
                        

                        gridContainer.append(point); // Append the point to the grid container using jQuery

                        // const containerHeight = gridContainer.height();
                        // $('#con').css("height",containerHeight)
                        // gridContainer.css('top',0)
                        // Add the point to the gridPoints array
                        gridPoints.push(point);
                    }
                }
            }

            // Function to handle applying the grid size
            function applyGridSize() {
                const gridSizeRow = $("#row-size");
                const gridSizeColumn = $("#column-size");
                const h = $("#grid-container").height();
                const gridSize = parseInt(gridSizeRow.val(), 10);//row
                const gridColumn = parseInt(gridSizeColumn.val(), 10);//row
                $('.drag-container').css("height", `${h}`)
                if (!isNaN(gridSize) && gridSize >= 1 && gridSize <= 20) {
                    // Calculate the width and height based on grid size and gap
                    const containerWidth = gridSize * (gridPointWidth + 5) + 2 * 10;
                    const containerHeight = gridSize * (gridPointHeight + 5) + 2 * 10;

                    console.log(gridSize, gridColumn)
                    // Set the width and height of the grid container
                    $("#grid-container").css("width", "fit-content");
                    $("#grid-container").css("height", "fit-content");

                    // Update the grid template columns and rows
                    $("#grid-container").css("grid-template-columns", `repeat(${gridColumn}, 1fr)`);
                    $("#grid-container").css("grid-template-rows", `repeat(${gridSize}, 1fr)`);

                    details = collectGridDetails();
                    console.log(details)
                    // $(".drag-container").css("width",)
                    createGridPoints(gridSize,gridColumn, details.gridDetails);

                    interaction()
                } else {
                    alert("Please enter a valid grid size between 1 and 20.");
                }
            }

            function collectGridDetails() {
                const gridPoints = document.querySelectorAll(".grid-point");
                const gridContainer = document.getElementById("grid-container"); // Get the grid container
                const computedStyle = getComputedStyle(gridContainer);
                const gridColumnCount = parseInt(computedStyle.getPropertyValue("grid-template-columns").split(" ").length);
                const gridRowCount = parseInt(computedStyle.getPropertyValue("grid-template-rows").split(" ").length);
                const gridSize = gridColumnCount * gridRowCount;
                const gridDetails = [];
                let floor = '';
                gridPoints.forEach((gridPoint) => {
                    const rect = gridPoint.getBoundingClientRect();
                    const x = parseInt(gridPoint.dataset.x, 10);
                    const y = parseInt(gridPoint.dataset.y, 10);
                    const width = rect.width;
                    const height = rect.height;
                    const row = y + 1; // Add 1 to convert from 0-based index to 1-based
                    const column = x + 1; // Add 1 to convert from 0-based index to 1-based
                    const isBlock = gridPoint.classList.contains("block");
                    const label = gridPoint.getAttribute("data-label");

                    // static for now
                    floor = $('#floor-selected').val();
                    gridDetails.push({
                        x,
                        y,
                        width,
                        height,
                        row,
                        column,
                        isBlock,
                        label,
                    });
                });

                return {
                    floor,
                    gridSize,
                    gridDetails,
                };
            }

            // Call the function to create a 10x10 grid of points
            createGridPoints(10, 14, 'null');

            // interact(".drag-item").draggable({
            //     listeners: {
            //     start(event) {
            //         event.target.classList.add("dragging");
            //         // event.target.style.zIndex = "3001"; // Increase the z-index when dragging starts
            //     },
            //     move(event) {
            //         const target = event.target;
            //         const x =
            //         (parseFloat(target.getAttribute("data-x")) || 0) + event.dx;
            //         const y =
            //         (parseFloat(target.getAttribute("data-y")) || 0) + event.dy;

            //         target.style.transform = `translate(${x}px, ${y}px)`;
            //         target.setAttribute("data-x", x);
            //         target.setAttribute("data-y", y);
            //     },
            //     end(event) {
            //         event.target.classList.remove("dragging");
            //         // Calculate the center coordinates of the draggable box
            //         const boxRect = event.target.getBoundingClientRect();
            //         const boxCenterX = (boxRect.left + boxRect.right) / 2;
            //         const boxCenterY = (boxRect.top + boxRect.bottom) / 2;

            //         // Find the grid-point under the center of the draggable box
            //         const gridPoints = document.querySelectorAll(".grid-point");
            //         for (const gridPoint of gridPoints) {
            //         const pointRect = gridPoint.getBoundingClientRect();
            //         if (
            //             boxCenterX >= pointRect.left &&
            //             boxCenterX <= pointRect.right &&
            //             boxCenterY >= pointRect.top &&
            //             boxCenterY <= pointRect.bottom
            //         ) {
            //             // The center of the box is over a grid-point, turn it into a block
            //             const label = event.target.getAttribute("data-label");
            //             const dataId = event.target.getAttribute("data-id");
            //             // The center of the box is over a grid-point, turn it into a block
            //             gridPoint.classList.add(dataId, "block");
                        
            //             gridPoint.innerText = '';
            //             gridPoint.setAttribute("data-label", label); // Set the data-label attribute
            //             // Create a close button
            //             const closeButton = document.createElement("button");
            //             closeButton.className = "cancel-drag-button";
            //             closeButton.innerText = "X";
            //             closeButton.addEventListener("click", () => {
            //                 gridPoint.classList.remove("block");
            //                 gridPoint.removeAttribute("data-label");
            //                 gridPoint.removeChild(closeButton);
            //             });
            //              // Append the close button to the grid point
            //              gridPoint.appendChild(closeButton);
            //             event.target.style.transform = "translate(0px, 0px)";
            //             event.target.setAttribute("data-x", 0);
            //             event.target.setAttribute("data-y", 0);
            //             return; // Exit the loop when a match is found
            //         }
            //         }

            //         // The center of the box is not over a grid-point, reset its position and remove the "block" class
            //         event.target.style.transform = "translate(0px, 0px)";
            //         event.target.setAttribute("data-x", 0);
            //         event.target.setAttribute("data-y", 0);
            //         event.target.classList.remove("block");
            //         // event.target.style.zIndex = "4000"; // Restore the original z-index when dragging stops
            //     },
            //     },
            // });

            function interaction(){
                $(".drag-item").on("dragstart", function () {
                    $(this).addClass("dragging");
                });

                $(".drag-item").on("dragend", function () {
                    $(this).removeClass("dragging");
                    $(this).css("transform", "translate(0px, 0px)");
                    $(this).attr("data-x", 0);
                    $(this).attr("data-y", 0);
                });

                $(".zone").on("dragover", function (e) {
                    e.preventDefault();
                    $(this).addClass("dragover");
                });

                $(".zone").on("dragleave", function () {
                    $(this).removeClass("dragover");
                });

                $(".zone").on("drop", function (e) {
                    e.preventDefault(); // Prevent the default behavior of a drop event
                    const box = $(".dragging")[0];
                    const computedStyle = getComputedStyle(box);
                    const label = $(box).attr("data-label");

                    // Get CSS properties from computed style
                    const color = computedStyle.color;
                    const border = computedStyle.border;
                    // const dataId = $(box).attr("data-id");
                    // addClass(dataId)
                    $(e.target).addClass("block").text('').attr("data-label", label).css({"color":color,"border":border});
                    
                    // Create a close button using jQuery
                    const closeButton = $("<button>").addClass("cancel-drag-button").text("X");
                    closeButton.on("click", function () {
                        $(e.target).removeClass("block").removeAttr("data-label");
                        $(this).remove();
                        $(e.target).css({'border':'1px solid rgba(0, 0, 0, 0.1)'})
                    });

                    // Append the close button to the grid point
                    $(e.target).append(closeButton);

                    // Remove the dragover class when the drop event occurs
                    $(this).removeClass("dragover");

                    // Reset the position of the dragged item
                    $(box).css("transform", "translate(0px, 0px)").attr("data-x", 0).attr("data-y", 0);
                });
            }

            interaction()
            // Dijkstra's Algorithm
            async function dijkstra(startX, startY, endX, endY, width2, height2) {
                const startNode = document.querySelector(
                `[data-x="${startX}"][data-y="${startY}"]`
                );
                const endNode = document.querySelector(
                `[data-x="${endX}"][data-y="${endY}"]`
                );

                const width = 4; // Adjust to match the width of the grid
                const height = 10; // Adjust to match the height of the grid

                // Create a 2D array to represent the grid
                const grid = new Array(height);
                for (let y = 0; y < height; y++) {
                grid[y] = new Array(width);
                for (let x = 0; x < width; x++) {
                    grid[y][x] = document.querySelector(
                    `[data-x="${x}"][data-y="${y}"]`
                    );
                }
                }

                // Helper function to calculate the distance between two grid points
                function calculateDistance(node1, node2) {
                const dx = Math.abs(node1.dataset.x - node2.dataset.x);
                const dy = Math.abs(node1.dataset.y - node2.dataset.y);
                return Math.sqrt(dx * dx + dy * dy);
                }

                // Initialize distance array with Infinity and visited array with false
                const distances = new Array(height)
                .fill(null)
                .map(() => new Array(width).fill(Infinity));
                const visited = new Array(height)
                .fill(null)
                .map(() => new Array(width).fill(false));

                // Set the distance of the starting point to 0
                distances[startY][startX] = 0;

                // Dijkstra's algorithm
                while (!visited[endY][endX]) {
                let currentMinDistance = Infinity;
                let currentX = null;
                let currentY = null;

                // Find the unvisited node with the smallest distance
                for (let y = 0; y < height; y++) {
                    for (let x = 0; x < width; x++) {
                    if (!visited[y][x] && distances[y][x] < currentMinDistance) {
                        currentMinDistance = distances[y][x];
                        currentX = x;
                        currentY = y;
                    }
                    }
                }

                // Mark the current node as visited
                visited[currentY][currentX] = true;

                // Explore neighbors
                const neighbors = [
                    { x: currentX - 1, y: currentY },
                    { x: currentX + 1, y: currentY },
                    { x: currentX, y: currentY - 1 },
                    { x: currentX, y: currentY + 1 },
                ];

                for (const neighbor of neighbors) {
                    const { x, y } = neighbor;

                    // Check if the neighbor is within the grid
                    if (x >= 0 && x < width && y >= 0 && y < height) {
                    const neighborNode = grid[y][x];

                    // Check if the neighbor is not a block
                    if (!neighborNode.classList.contains("block")) {
                        const distanceToNeighbor = calculateDistance(
                        grid[currentY][currentX],
                        neighborNode
                        );

                        // Update the distance if a shorter path is found
                        if (
                        !visited[y][x] &&
                        distances[currentY][currentX] + distanceToNeighbor <
                            distances[y][x]
                        ) {
                        distances[y][x] =
                            distances[currentY][currentX] + distanceToNeighbor;
                        }
                    }
                    }
                }
                }

                // Backtrack to find the shortest path
                const shortestPath = [];
                let currentX = endX;
                let currentY = endY;

                while (currentX !== startX || currentY !== startY) {
                shortestPath.unshift({ x: currentX, y: currentY });
                const neighbors = [
                    { x: currentX - 1, y: currentY },
                    { x: currentX + 1, y: currentY },
                    { x: currentX, y: currentY - 1 },
                    { x: currentX, y: currentY + 1 },
                ];

                for (const neighbor of neighbors) {
                    const { x, y } = neighbor;

                    // Check if the neighbor is within the grid
                    if (x >= 0 && x < width && y >= 0 && y < height) {
                    const neighborNode = grid[y][x];
                    const distanceToNeighbor = calculateDistance(
                        grid[currentY][currentX],
                        neighborNode
                    );

                    if (
                        distances[y][x] + distanceToNeighbor ===
                        distances[currentY][currentX]
                    ) {
                        currentX = x;
                        currentY = y;
                        break;
                    }
                    }
                }
                }

                // Add the starting point to the shortest path
                shortestPath.unshift({ x: startX, y: startY });

                // Highlight the shortest path in the grid
                for (const { x, y } of shortestPath) {
                const node = grid[y][x];
                node.classList.add("passed"); // Highlight the current node as passed
                await sleep(200); // Delay for visualization (adjust as needed)
                }
            }

             // Helper function to add a delay for animation
            function sleep(ms) {
                return new Promise((resolve) => setTimeout(resolve, ms));
            }

            // Button click event to run Dijkstra's Algorithm
            $("#run-dijkstra").on("click", function() {
                // Clear previous highlights
                $(".grid-point").removeClass("passed");
                // Call Dijkstra's algorithm with your specified starting and destination points
                // dijkstra(2, 9, 3, 0);
                console.log(collectGridDetails());
                // Call the function to collect data
                var gridDetails = collectGridDetails();
                sendCoordinates(gridDetails);
            });

            // Add an event listener for the Apply button using jQuery
            $("#apply-grid-size").on("click", applyGridSize);


            // function to send coordinates to a server
            function sendCoordinates(coordinates){
                // Get the CSRF token from the meta tag
                var csrfToken = $('meta[name="csrf-token"]').attr('content');
                $.ajax({
                    url: '/building-layouts/coordinates', // Replace with your server endpoint URL
                    method: 'POST', // Use POST or other HTTP method as needed
                    data: {
                        gridDetails: coordinates
                    },
                    headers: {
                        'X-CSRF-TOKEN': csrfToken // Include the CSRF token in the headers
                    },
                    success: function(response) {
                        // Handle the server's response here
                        console.log('Data sent successfully:', response);
                        toastr.options = {
                            "closeButton": false,
                            "debug": false,
                            "newestOnTop": false,
                            "progressBar": false,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": false,
                            "onclick": null,
                            "showDuration": 300,
                            "hideDuration": 1000,
                            "timeOut": 5000,
                            "extendedTimeOut": 1000,
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        };
                        toastr['success']('Your Floor Plan is ready to used!');
                    },
                    error: function(xhr, status, error) {
                        // Handle any errors that occur during the AJAX request
                        console.error('Error:', status, error);
                    }
                });
            }

            // Handle floor selection change
            $('#floor-selected').change(function () {
                var selectedFloor = $(this).val();
                // alert(selectedFloor)
                filterFacilitiesByFloor(selectedFloor);
            });

            function filterFacilitiesByFloor(floor) {
                $('.drag-item').fadeOut(300); // Hide all facilities with a fade-out animation
                // Show the "starting-point" element
                $('#starting-point').fadeIn(300);
                $('#stair-point').fadeIn(300);
                $('#wall-point').fadeIn(300);
                if (floor === 'ground-floor') {
                    // Show only ground floor facilities
                    $('.drag-item[data-floor="ground-floor"]').fadeIn(300);
                } else {
                    // Show facilities for the selected floor
                    $('.drag-item[data-floor="' + floor + '"]').fadeIn(300);
                }
            }

            // function for grid merge
            function gridMerge(){
                // JavaScript to add and remove the 'selected' class
                const gridPoints = document.querySelectorAll('.grid-point');

                gridPoints.forEach(point => {
                    point.addEventListener('dblclick', () => {
                        point.classList.toggle('wall');
                    });
                });

                // jQuery to handle merging when the button is clicked
                $(document).ready(function () {
                    $('#merge-grid').on('click', function () {
                        const selectionType = identifySelectionType();
                        console.log(`Selection type: ${selectionType}`);
                    });
                });
            }

            // Function to identify the selection type and apply styling
            function identifySelectionType() {
                const $gridPoints = $('.grid-point.selected');
                const selectedGridPoints = $gridPoints.toArray(); // Convert jQuery selection to an array

                if ($gridPoints.length < 2) {
                    return "Single"; // Only one grid point is selected
                }

                const xValues = [...new Set($gridPoints.map(function () { return $(this).data('x'); }))]; // Get unique x-values
                const yValues = [...new Set($gridPoints.map(function () { return $(this).data('y'); }))]; // Get unique y-values

                if (xValues.length === $gridPoints.length) {
                    $gridPoints.addClass("horizontal-selection"); // Add the "horizontal-selection" class for horizontal selection
                    $gridPoints.removeClass("vertical-selection"); // Remove the "vertical-selection" class

                    // Remove the class from all grid points
                    $gridPoints.removeClass("horizontal-selection-last");
                    
                    // Add the class to the last grid point within the horizontal selection
                    const lastHorizontalGridPoint = $gridPoints.last();
                    if (lastHorizontalGridPoint.hasClass("horizontal-selection")) {
                        lastHorizontalGridPoint.addClass("horizontal-selection-last");
                    }

                    return "Horizontal"; // All selected grid points have unique x-values

                } else if (yValues.length === $gridPoints.length) {
                    $gridPoints.addClass("vertical-selection"); // Add the "vertical-selection" class for vertical selection
                    $gridPoints.removeClass("horizontal-selection"); // Remove the "horizontal-selection" class
                    
                    // Remove the class from all grid points
                    $gridPoints.removeClass("horizontal-selection-last");
                    
                    // Add the class to the last grid point within the horizontal selection
                    const lastVerticalGridPoint = $gridPoints.last();
                    if (lastVerticalGridPoint.hasClass("vertical-selection")) {
                        lastVerticalGridPoint.addClass("vertical-selection-last");
                    }

                    return "Vertical"; // All selected grid points have unique y-values
                
                } 
            }

            // Listen for changes in the search input field
            $("#drag-search").on("input", function () {
                // Get the search query from the input
                const searchQuery = $(this).val().toLowerCase();

                // Filter the drag items based on the search query
                $(".drag-item").each(function () {
                    const itemName = $(this).text().toLowerCase();
                    
                    // Check if the item name contains the search query
                    if (itemName.includes(searchQuery)) {
                        $(this).show(); // Display matching items
                    } else {
                        $(this).hide(); // Hide non-matching items
                    }
                });
            });


            gridMerge()
       })

    </script>

    {{-- // notification --}}
    @if (session()->has('notification'))
        <script>
            $(document).ready(function() {
                // Set Toastr options
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": false,
                    "progressBar": false,
                    "positionClass": "toast-top-right",
                    "preventDuplicates": false,
                    "onclick": null,
                    "showDuration": 300,
                    "hideDuration": 1000,
                    "timeOut": 5000,
                    "extendedTimeOut": 1000,
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                };
                var notificationJson = {!! json_encode(session('notification')) !!};
                var notification = JSON.parse(notificationJson);
                console.log(notification)
                toastr[notification.status](notification.message);
            });
        </script>
    @endif
@endsection
