<?php
function adminer_object() {
    // required to run any plugin
    include_once "./plugins/plugin.php";

    //get db host from environment
    $db_host=explode(getenv(",","DATABASE_HOST"));
    // autoloader
    foreach (glob("plugins/*.php") as $filename) {
        include_once "./$filename";
    }

    $plugins = array(
        // specify enabled plugins here
        new AdminerDumpXml,
        new AdminerTinymce,
        new AdminerFileUpload("data/"),
        new AdminerSlugify,
        new AdminerTranslation,
        new AdminerForeignSystem,
	new AdminerDumpBz2,
	new AdminerDumpZip,
	//new AdminerDumpAlter,
	new AdminerEditForeign,
	new AdminerEditCalendar,
	//new AdminerEditTextarea,
	new AdminerEnumOption,
	new AdminerJsonColumn,
	new AdminerLoginServers($db_host),
	new AdminerTablesFilter,
	new AdminerVersionNoverify
    );

    /* It is possible to combine customization and plugins:
    class AdminerCustomization extends AdminerPlugin {
    }
    return new AdminerCustomization($plugins);
    */

    return new AdminerPlugin($plugins);
}

// include original Adminer or Adminer Editor
include "./adminer.php";
?>
