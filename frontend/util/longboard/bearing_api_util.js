export const fetchBearings = () => {
    return $.ajax({
        method: 'GET',
        url: "/api/bearings",
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};

export const fetchBearing = (bearing_id) => {
    return $.ajax({
        method: 'GET',
        url: `/api/bearings/${bearing_id}`,
        success: function(data) {
            return data;
        },
        error: function(xhr) {
            return xhr.responseJSON.errors;
        }
    });
};
