//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <multi_chip_picker/multi_chip_picker_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) multi_chip_picker_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MultiChipPickerPlugin");
  multi_chip_picker_plugin_register_with_registrar(multi_chip_picker_registrar);
}
