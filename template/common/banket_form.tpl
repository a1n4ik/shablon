<div class="modal fade"
     id="zakazBanket"
     tabindex="-1"
     role="dialog"
     aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <div class="d-flex align-center justify-between w100">
          <div class="modal-title p18">Заказать банкет</div>
          <div class="close pointer"
               data-dismiss="modal"
               aria-label="Close"><i class="icon-close"></i></div>
        </div>
      </div>
      <div class="modal-body">
        <div id="banket-zayavka">
          <form>
            <div style="position: absolute; left: -5000px;"
                 aria-hidden="true">
              <input type="text"
                     name="b_nickname"
                     tabindex="-1"
                     value=""
                     autocomplete="off">
            </div>
            <div class="form-group">
              <input name="fio"
                     id="b-fio"
                     class="form-control"
                     placeholder="Имя*">
            </div>
            <div class="form-group">
              <input name="phone"
                     id="b-phone"
                     class="form-control"
                     placeholder="Телефон*">
            </div>
            <div class="form-group">
              <select class="form-control"
                      name="format_event"
                      placeholder="Формат мероприятия"
                      id="b-formatevent">
                <option value="wedding">Свадьба</option>
                <option value="birthday">День Рождения</option>
                <option value="child_party">Детский праздник</option>
                <option value="corporate_party">Корпоратив</option>
                <option value="conference">Конференция/тренинг</option>
                <option value="team_building">Team-building</option>
                <option value="party">Вечеринка</option>
                <option value="memorial">Поминки</option>
                <option value="other">Другое</option>
              </select>
            </div>
            <div class="form-group">
              <select class="form-control"
                      name="format_res"
                      placeholder="Царский"
                      id="b-formres">
                <option value="Царский">Царский</option>
                <option value="Итальянский">Итальянский</option>
                <option value="Каминный">Каминный</option>
                <option value="Охотничий">Охотничий</option>
                <option value="Караоке Мажор">Караоке Мажор</option>
              </select>
            </div>
            <div class="form-group">
              <input type="text"
                     class="form-control"
                     name="event-date"
                     id="event-date"
                     placeholder="Дата"
                     onfocus="(this.type='date')">
            </div>
            <div class="form-group form-slider">
              <label class="control-label">Кол-во персон</label>
              <div id="person-count-slider"></div>
              <?php /* ?>
         <div class="regular p14"> от <span id="sx4">40</span> до <span id="sx5">80</span></div>
         <?php */ ?>
            </div>
            <div class="form-group form-slider">
              <label class="control-label">Стоимость на человека</label>
              <div id="budget-count-slider"></div>
              <?php /* ?>
         <div class="regular p14"> от <span id="sx2">1000</span> до <span id="sx3">4000</span></div>
         <?php */ ?>
            </div>
            <div class="mar-top">

              <style>
                #cookieConsentWrapper {
                  display: flex;
                  align-items: center;
                  font-size: 14px;
                  color: #000;
                  margin: 25px 0 15px;
                }

                #cookieConsentWrapper input[type="checkbox"] {
                  appearance: none;
                  -webkit-appearance: none;
                  width: 20px;
                  height: 20px;
                  border: 1px solid rgba(111, 84, 56, 0.5);
                  border-radius: 4px;
                  margin-top: 0;
                  margin-right: 8px;
                  position: relative;
                  cursor: pointer;
                  transition: all 0.2s ease;
                }

                #cookieConsentWrapper input[type="checkbox"]:checked {
                  border-color: #b49e71;
                  background-color: #b49e71;
                }

                #cookieConsentWrapper input[type="checkbox"]:checked::after {
                  content: '';
                  position: absolute;
                  left: 4px;
                  top: 0px;
                  width: 6px;
                  height: 10px;
                  border: solid white;
                  border-width: 0 2px 2px 0;
                  transform: rotate(45deg);
                }

                #cookieConsentWrapper label {
                  margin: 0;
                  color: rgba(111, 84, 56, 0.5);
                  cursor: pointer;
                  font-size: 14px;
                  font-weight: 400;
                }

                #cookieConsentWrapper a {
                  text-decoration: none;
                  color: rgba(111, 84, 56, 0.5);
                }

                .checkbox-error input[type="checkbox"] {
                  border-color: red !important;
                  box-shadow: 0 0 3px red;
                }
              </style>

              
              <button type="button"
                      id="b-submit"
                      class="btn btn-primary pointer w100 send-zayavka">Отправить</button>

              <div id="cookieConsentWrapper">
                <input type="checkbox"
                       id="cookieConsentCheckbox" />
                <label for="cookieConsentCheckbox">
                  Уведомления о <a href="/privacy"
                     target="_blank">cookie и политике конфиденциальности</a>
                </label>
              </div>


            </div>
            <div id="msb-notification"></div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal fade"
     id="modal-success">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <div class="d-flex align-center justify-between w100">
          <div class="modal-title p18">Уведомление</div>
          <button class="close"
                  type="button"
                  data-dismiss="modal"
                  aria-label="Close">×</button>
        </div>
      </div>
      <div class="modal-body mar-top">
        <p id="modal-notf"></p>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary"
                type="button"
                data-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>
<script src="js/nouislider.min.js"></script>
<script>
  var sx = document.getElementById('person-count-slider');
  noUiSlider.create(sx, {
    start: [40, 80],
    connect: true,
    tooltips: [
      { to: function (value) { return 'от ' + value; } },
      { to: function (value) { return 'до ' + value; } },
    ],
    range: {
      'min': 10,
      '5%': 15,
      '7.5%': 20,
      '10%': 25,
      '12.5%': 30,
      '15%': 35,
      '17.5%': 40,
      '20%': 50,
      '25%': 60,
      '30%': 80,
      '35%': 100,
      '40%': 110,
      '45%': 140,
      '60%': 150,
      '65%': 175,
      '70%': 190,
      '75%': 200,
      '80%': 225,
      '85%': 250,
      '90%': 300,
      'max': 350
    },
    snap: true
  });
  /*sx.noUiSlider.on('update', function(values, handle) {
    var value = values[handle];
    if (handle) {
      $('#sx5').html(Math.round(value));
    } else {
      $('#sx4').html(Math.round(value));
    }
  });*/

  var sx1 = document.getElementById('budget-count-slider');
  noUiSlider.create(sx1, {
    start: [100, 4000],
    connect: true,
    snap: true,
    tooltips: [
      { to: function (value) { return 'от ' + value; } },
      { to: function (value) { return 'до ' + value; } },
    ],
    range: {
      'min': 2500,
      '4%': 2600,
      '9%': 2700,
      '13%': 2800,
      '18%': 2900,
      '22%': 3000,
      '27%': 3250,
      '31%': 3500,
      '36%': 3750,
      '40%': 4000,
      '45%': 4500,
      '49%': 5000,
      '54%': 6000,
      '58%': 7000,
      '63%': 8000,
      '67%': 9000,
      '72%': 10000,
      '76%': 12500,
      '81%': 15000,
      '85%': 17500,
      '90%': 20000,
      '94%': 25000,
      '99%': 27500,
      'max': 30000
    }
  });
  /*sx1.noUiSlider.on('update', function(values, handle) {
    var value = values[handle];
    if (handle) {
      $('#sx3').html(Math.round(value));
    } else {
      $('#sx2').html(Math.round(value));
    }
  });*/

  $('#b-submit').click(function (e) {
    // Проверка на бота (honeypot). Если скрытое поле заполнено, не отправляем форму.
    if ($('#banket-zayavka input[name="b_nickname"]').val() !== '') {
      return;
    }

    // Проверка обязательных полей
    if ($('#b-fio').val().trim() === '' || $('#b-phone').val().trim() === '') {
      alert('Заполните обязательные поля');
      return;
    }

    // Проверка чекбокса
    const checkbox = document.getElementById('cookieConsentCheckbox');
    const wrapper = document.getElementById('cookieConsentWrapper');

    if (!checkbox.checked) {
      wrapper.classList.add('checkbox-error');
      alert('Пожалуйста, подтвердите согласие с политикой конфиденциальности.');
      return;
    } else {
      wrapper.classList.remove('checkbox-error');
    }

    $.ajax({
      url: '/banketsend.php',
      dataType: 'json',
      type: 'post',
      data: {
        'fio': $('#b-fio').val().trim(),
        'person_count': $('#person-count-slider')[0].noUiSlider.get(),
        'phone': $('#b-phone').val(),
        'budget_count': $('#budget-count-slider')[0].noUiSlider.get(),
        'format_event': $('#b-formatevent option:selected').html(),
        'format_res': $('#b-formres option:selected').html(),
        'date': $('#event-date').val()
      },
      success: function (ef) {
        //console.log(ef);
        $('#modal-notf').html('Ваша заявка успешно отправлена! Наши менеджеры свяжутся с вами в ближайшее время');
        $('#modal-success').modal('show');
      }
    });
  });
</script>