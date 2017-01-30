BUILDDATE=`date +%F`

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

#  tcl/tk 8.6
if [[ $SV_SUPER_OPTIONS == *ZIP_TCL* ]]; then
  echo "ZIP_TCL"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_TCLTK_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_TCLTK_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_TCLTK_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# python 2.7
if [[ $SV_SUPER_OPTIONS == *ZIP_PYTHON* ]]; then
  echo "ZIP_PYTHON"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_PYTHON_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_PYTHON_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_PYTHON_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# numpy
# NOTE: numpy is contained in the python zip

# freetype
if [[ $SV_SUPER_OPTIONS == *ZIP_FREETYPE* ]]; then
  echo "ZIP_FREETYPE"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_FREETYPE_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_FREETYPE_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_FREETYPE_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# gdcm
if [[ $SV_SUPER_OPTIONS == *ZIP_GDCM* ]]; then
  echo "ZIP_GDCM"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_GDCM_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_GDCM_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_GDCM_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# vtk
if [[ $SV_SUPER_OPTIONS == *ZIP_VTK* ]]; then
  echo "ZIP_VTK"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_VTK_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_VTK_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_VTK_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# itk
if [[ $SV_SUPER_OPTIONS == *ZIP_ITK* ]]; then
  echo "ZIP_ITK"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_ITK_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_ITK_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_ITK_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# opencascade
if [[ $SV_SUPER_OPTIONS == *ZIP_OPENCASCADE* ]]; then
  echo "ZIP_OPENCASCADE"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_OPENCASCADE_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_OPENCASCADE_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_OPENCASCADE_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# mmg
if [[ $SV_SUPER_OPTIONS == *ZIP_MMG* ]]; then
  echo "ZIP_MMG"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_MMG_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_MMG_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_MMG_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# mitk
if [[ $SV_SUPER_OPTIONS == *ZIP_MITK* ]]; then
  echo "ZIP_MITK"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_MITK_DIR-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.REPLACEME_SV_MITK_DIR-BUILD${BUILDDATE}.zip REPLACEME_SV_MITK_DIR
  popd
fi

rm -Rf zip_output_tmp
mkdir -p zip_output_tmp

# everything
if [[ $SV_SUPER_OPTIONS == *ZIP_EVERYTHING* ]]; then
  echo "ZIP_EVERYTHING"
  REPLACEME_TAR -C zip_output_tmp/ -xvzf tar_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.everything-BUILD${BUILDDATE}.tar.gz
  pushd zip_output_tmp
  REPLACEME_ZIP -r ../zip_output/REPLACEME_SV_PLATFORM.REPLACEME_SV_COMPILER_BIN_DIR.REPLACEME_SV_ARCH_DIR.everything-BUILD${BUILDDATE}.zip \
    REPLACEME_SV_TCLTK_DIR \
    REPLACEME_SV_PYTHON_DIR \
    REPLACEME_SV_FREETYPE_DIR \
    REPLACEME_SV_GDCM_DIR \
    REPLACEME_SV_VTK_DIR \
    REPLACEME_SV_ITK_DIR \
    REPLACEME_SV_OPENCASCADE_DIR \
    REPLACEME_SV_MMG_DIR \
    REPLACEME_SV_MITK_DIR
  popd
fi

rm -Rf zip_output_tmp
