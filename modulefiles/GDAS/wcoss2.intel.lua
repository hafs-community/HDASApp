help([[
Load environment for running the GDAS application with Intel compilers and MPI.
]])

local pkgName    = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

prepend_path("MODULEPATH", "/apps/dev/lmodules/core")

PrgEnv_intel_ver=os.getenv("PrgEnv_intel_ver") or "8.3.3"
load(pathJoin("PrgEnv-intel", PrgEnv_intel_ver)) 
cmake_ver=os.getenv("cmake_ver") or "3.20.2"
load(pathJoin("cmake", cmake_ver))
craype_ver=os.getenv("craype_ver") or "2.7.17"
load(pathJoin("craype", craype_ver))
cray_pals_ver=os.getenv("cray_pals_ver") or "1.2.2"
load(pathJoin("cray-pals", cray_pals_ver))
intel_ver=os.getenv("intel_ver") or "19.1.3.304"
load(pathJoin("intel", intel_ver))
cray_mpich_ver=os.getenv("cray_mpich_ver") or "8.1.19"
load(pathJoin("cray-mpich", cray_mpich_ver))
hdf5_ver=os.getenv("hdf5_ver") or "1.14.0"
--load(pathJoin("hdf5-C", hdf5_ver))
load("hdf5/1.10.6")
netcdf_ver=os.getenv("netcdf_ver") or "4.9.2"
--load(pathJoin("netcdf-C", netcdf_ver))
load("netcdf/4.7.4")
udunits_ver=os.getenv("udunits_ver") or "2.2.28"
load(pathJoin("udunits", udunits_ver))
eigen_ver=os.getenv("eigen_ver") or "3.4.0"
load(pathJoin("eigen", eigen_ver))
boost_ver=os.getenv("boost_ver") or "1.79.0"
load(pathJoin("boost", boost_ver))
gsl_lite_ver=os.getenv("gsl_lite_ver") or "v0.40.0"
load(pathJoin("gsl-lite", gsl_lite_ver))
sp_ver=os.getenv("sp_ver") or "2.4.0"
load(pathJoin("sp", sp_ver))
python_ver=os.getenv("python_ver") or "3.8.6"
load(pathJoin("python", python_ver))
ecbuild_ver=os.getenv("ecbuild_ver") or "3.7.0"
load(pathJoin("ecbuild", ecbuild_ver))
qhull_ver=os.getenv("qhull_ver") or "2020.2"
load(pathJoin("qhull", qhull_ver))
eckit_ver=os.getenv("eckit_ver") or "1.24.4"
load(pathJoin("eckit", eckit_ver))
fckit_ver=os.getenv("fckit_ver") or "0.11.0"
load(pathJoin("fckit", fckit_ver))
atlas_ver=os.getenv("atlas_ver") or "0.35.0"
load(pathJoin("atlas", atlas_ver))
nccmp_ver=os.getenv("nccmp_ver") or "1.8.9.0"
load(pathJoin("nccmp", nccmp_ver))
nco_ver=os.getenv("nco_ver") or "5.0.6"
load(pathJoin("nco", nco_ver))
gsl_ver=os.getenv("gsl_ver") or "2.7"
load(pathJoin("gsl", gsl_ver)) 
prod_util_ver=os.getenv("prod_util_ver") or "2.0.14"
load(pathJoin("prod_util", prod_util_ver))
bufr_ver=os.getenv("bufr_ver") or "12.0.0"
load(pathJoin("bufr", bufr_ver))
fms_C_ver=os.getenv("fms_C_ver") or "2023.04"
load(pathJoin("fms-C", fms_C_ver))

--load("git/2.29.0")

-- hack for pybind11
setenv("pybind11_ROOT", "/apps/spack/python/3.8.6/intel/19.1.3.304/pjn2nzkjvqgmjw4hmyz43v5x4jbxjzpk/lib/python3.8/site-packages/pybind11/share/cmake/pybind11")

-- hack for git-lfs
--prepend_path("PATH", "/apps/spack/git-lfs/2.11.0/gcc/11.2.0/m6b6nl5kfqngfteqbggydc7kflxere3s/bin")

-- hack for FMS
setenv('fms_ROOT', '/apps/prod/hpc-stack/i-19.1.3.304__m-8.1.12__h-1.14.0__n-4.9.2__p-2.5.10__e-8.6.0pnetcdf/intel-19.1.3.304/cray-mpich-8.1.12/fms/2023.04')

--local mpiexec = '/pe/intel/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpirun'
local mpinproc = '-n'
setenv('MPIEXEC_EXEC', '/opt/cray/pe/pals/1.2.2/bin/mpiexec')
setenv('MPIEXEC_NPROC', mpinproc)

setenv("CRTM_FIX","/lfs/h2/emc/da/noscrub/emc.da/GDASApp/fix/crtm/2.4.0")
setenv("GDASAPP_TESTDATA","/lfs/h2/emc/da/noscrub/emc.da/GDASApp/testdata")
setenv("GDASAPP_UNIT_TEST_DATA_PATH", "/lfs/h2/emc/da/noscrub/emc.da/GDASApp/unittestdata")

whatis("Name: " .. pkgName)
--whatis("Version: " .. pkgVersion)
whatis("Category: GDASApp")
whatis("Description: Load all libraries needed for GDASApp")
