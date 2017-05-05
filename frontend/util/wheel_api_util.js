export const fetchWheels = () => {
    return $.ajax({
        method: 'GET',
        url: "/api/wheels",
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const fetchWheel = (wheel_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/wheels/${wheel_id}`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
