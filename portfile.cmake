#set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO al-sabr/FlashRuntimeExtensions
    REF 0.1
    SHA512 bf61ad9c0d41b7d29df5ad507b4df2c494685e5d2f9f94e7e4c30acaabc86ae7c13ffb001ea73ad09c355d921a6219ab213c7791bce3ef0e12e6913cdf179ada
    HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
