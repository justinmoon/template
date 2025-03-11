// FIXME: this doesn't work?!
// let platforms = variable::prompt("Include iOS?", "", ["SwiftUI", "Jetpack Compose"]);

let include_ios = variable::get("include_ios");
let include_android = variable::get("include_android");

if (!include_ios) {
    debug("Deleting ios");
    file::delete("ios");
} else {
    debug("Keeping ios");
}

if (!include_android) {
    debug("Deleting android");
    file::delete("android");
} else {
    debug("Keeping android");
}
