var nightModeId = 'nightMode';

var darkMode = {
    autoNightMode: function () {

        var nightModes = $('.night-mode');
        var day = new Date();
        var D = day.getHours();
        var isNightMode = hanUtils.getLocalStorage(nightModeId);
        if (D <= nightModeStartTime && D > nightModeEndTime) {
            // 白天
            if (isNightMode === true) {
                // 是暗黑模式
                darkMode.changeNightMode(nightModes);
                return;
            }
            darkMode.changeLightMode(nightModes);
        } else {
            // 晚上
            if (isNightMode === false) {
                // 不是暗黑模式
                darkMode.changeLightMode(nightModes);
                return;
            }
            darkMode.changeNightMode(nightModes);
        }
        if (typeof renderComment === 'function') {
            renderComment();
        }
    },

    changeLightMode: function (nightModes) {
        $(document.body).removeClass('night');
        for (var i = 0; i < nightModes.length; i++) {
            var nightMode = $(nightModes[i]);
            nightMode.addClass('fa-moon');
            nightMode.removeClass('fa-lightbulb');
        }
        hanUtils.setLocalStorage(nightModeId, false)
    },

    changeNightMode: function (nightModes) {
        $(document.body).addClass('night');
        $("body").css("background-image","none");
        for (var i = 0; i < nightModes.length; i++) {
            var nightMode = $(nightModes[i]);
            nightMode.addClass('fa-lightbulb');
            nightMode.removeClass('fa-moon');
        }
        hanUtils.setLocalStorage(nightModeId, true)
    },

    nightModeFuc: function () {
        var nightModes = $('.night-mode');
        if (!nightModes) {
            return;
        }
        for (var i = 0; i < nightModes.length; i++) {
            var nightMode = $(nightModes[i]);
            darkMode.doFuncNightMode(nightMode);
        }

    },

    doFuncNightMode: function (nightMode) {
        var nightModeBtn = $('.night-mode');
        if ($(document.body).hasClass('night')) {
            nightModeBtn.addClass('fa-lightbulb');
            nightModeBtn.removeClass('fa-moon');
            $('#modeicon').attr("xlink:href", "#icon-sun");
            $('.theme-controls').find("#dark-bg").children("i").removeClass("fa-moon-o");
            $('.theme-controls').find("#dark-bg").children("i").addClass("fa-lightbulb-o");
        } else {
            nightModeBtn.addClass('fa-moon');
            nightModeBtn.removeClass('fa-lightbulb');
            $('#modeicon').attr("xlink:href", "#icon-_moon");
            $('.theme-controls').find("#dark-bg").children("i").removeClass("fa-lightbulb-o");
            $('.theme-controls').find("#dark-bg").children("i").addClass("fa-moon-o");
        }


        nightMode.click(function (e) {
            if (nightMode.hasClass('fa-moon')) {
                $(document.body).addClass('night');
                nightModeBtn.addClass('fa-lightbulb');
                nightModeBtn.removeClass('fa-moon');
                $('#modeicon').attr("xlink:href", "#icon-sun");
                $('.theme-controls').find("#dark-bg").children("i").removeClass("fa-moon-o");
                $('.theme-controls').find("#dark-bg").children("i").addClass("fa-lightbulb-o");
                hanUtils.setLocalStorage(nightModeId, true);
            } else if (nightMode.hasClass('fa-lightbulb')) {
                $(document.body).removeClass('night');
                nightModeBtn.addClass('fa-moon');
                nightModeBtn.removeClass('fa-lightbulb');
                $('#modeicon').attr("xlink:href", "#icon-_moon");
                $('.theme-controls').find("#dark-bg").children("i").removeClass("fa-lightbulb-o");
                $('.theme-controls').find("#dark-bg").children("i").addClass("fa-moon-o");
                hanUtils.setLocalStorage(nightModeId, false);
            }
            $(document.body).removeClass('sidebar-opened');
            $("body").css("background-image","none");
            if (typeof renderComment === 'function') {
                renderComment();
            }
        })
    }
}

$(function () {
// 自动暗黑模式
    darkMode.autoNightMode();

// 暗黑模式
    darkMode.nightModeFuc();
})

