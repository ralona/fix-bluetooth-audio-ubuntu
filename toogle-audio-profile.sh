index=$(pacmd list-sinks | awk '/\* index:/{print $3}')
device_name=$(pacmd list-sinks | awk -v idx="$index" '$2=="index:" && $3==idx {getline; print $0}')
device_id=$(echo "$device_name" | awk -F '[.<>]' '{print $3}')
current_config=$(echo "$device_name" | awk -F '[.<>]' '{print $4}')

case $current_config in
    "handsfree_head_unit")
        new_config="a2dp_sink"
        ;;
    "a2dp_sink")
        new_config="handsfree_head_unit"
        ;;
    *)
	echo "Error: Unknown current configuration: $current_config"
	echo "Failed to change the audio device configuration."
	return
	;;
esac

echo "Changing $device_id from $current_config to $new_config..."

pacmd set-card-profile "bluez_card.$device_id" "$new_config"

echo "The audio device configuration has been changed successfully."

