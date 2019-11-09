
<nav class="large-3 medium-4 columns" id="actions-sidebar">
        <?php if (!$username): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Actions') ?></li>
            <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Login'), ['controller' => 'Users', 'action' => 'login']) ?></li>
            <li><?= $this->Html->link(__('Novo Empréstimo'), ['controller' => 'Loan', 'action' => 'newloan']) ?></li>
        <li><?= $this->Html->link(__('Devolução'), ['controller' => 'Loan', 'action' => 'devolution']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===2): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('User Actions') ?></li>
            <li><?= $this->Html->link(__('Novo Empréstimo'), ['controller' => 'Loan', 'action' => 'newloan']) ?></li>
            <li><?= $this->Html->link(__('Devolução'), ['controller' => 'Loan', 'action' => 'devolution']) ?></li>
            <li><?= $this->Html->link(__('Meus Emprestados'), ['controller' => 'Students', 'action' => 'myloans']) ?></li>
        </ul>
        <?php endif; ?>
        <?php if ($username_role===1): ?>
        <ul class="side-nav">
            <li class="heading"><?= __('Admin Actions') ?></li>
            <li><?= $this->Html->link(__('Todos os Setores'), ['controller' => 'Sectors', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Setores'), ['controller' => 'Sectors', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adiciona um Setor'), ['controller' => 'Sectors', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Usuários'), ['controller' => 'Users', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Usuários'), ['controller' => 'Users', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Add um Usuário'), ['controller' => 'Users', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Empréstimos'), ['controller' => 'Loan', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Emprestimos'), ['controller' => 'Loan', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adiciona um Empréstimos'), ['controller' => 'Loan', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Estudantes'), ['controller' => 'Students', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Estudantes'), ['controller' => 'Students', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adicionar um Estudante'), ['controller' => 'Students', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Todos os Kits'), ['controller' => 'equipaments', 'action' => 'index']) ?></li>
            <li><?= $this->Html->link(__('Download Todos os Kits'), ['controller' => 'equipaments', 'action' => 'download']) ?></li>
            <li><?= $this->Html->link(__('Adicionar um Kits'), ['controller' => 'equipaments', 'action' => 'add']) ?></li>
            <li><?= $this->Html->link(__('Ler o Código de Barras'), ['controller' => 'Loan', 'action' => 'barcode-scan']) ?></li>
        </ul>
        <?php endif; ?>
</nav>
<div class="loan form large-9 medium-8 columns content">
        <h1 class="title">Scan Barcode From Student ID</h1>
        <p id="demo"></p>
            <div>
                <a class="button" id="startButton" onclick="Start()">Start</a>
                <a class="button" id="resetButton" onclick="Reset()">Reset</a>
            </div>
        <section class="container" id="demo-content" style="display: none;">

            <div>
                <video id="video" width="100%" height="100%" style="border: 1px solid gray"></video>
            </div>

            <div id="sourceSelectPanel" style="display:none">
                <label for="sourceSelect">Change video source:</label>
                <select id="sourceSelect" style="max-width:400px">
                </select>
            </div>

            <label>Result:</label>
            <pre><code id="result"></code></pre>
        </section>

        <h1 class="title">Scan barcode from Equipament</h1>
        <p id="demo1"></p>
        <div>
                <a class="button" id="startButton1" onclick="Start1()">Start</a>
                <a class="button" id="resetButton1" onclick="Reset1()">Reset</a>
        </div>
        <section class="container" id="demo-content1" style="display: none;">
            <div>
                <video id="video1" width="100%" height="100%" style="border: 1px solid gray"></video>
            </div>

            <div id="sourceSelectPanel1" style="display:none">
                <label for="sourceSelect1">Change video source:</label>
                <select id="sourceSelect1" style="max-width:400px">
                </select>
            </div>

            <label>Result:</label>
            <pre><code id="result1"></code></pre>
        </section>
        

    <?= $this->Form->create() ?>
    <fieldset>
        <legend><?= __('Add Loan') ?></legend>
        <?php
            echo $this->Form->control('student_code', ['empty' => true]);
            echo $this->Form->control('equipament_code', ['empty' => true]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
  

  </div>
    <script type="text/javascript" src="https://unpkg.com/@zxing/library@latest"></script>
    <script type="text/javascript">
        window.addEventListener('load', function () {
            let selectedDeviceId;
            const codeReader = new ZXing.BrowserBarcodeReader()
            console.log('ZXing code reader initialized')
            codeReader.getVideoInputDevices()
                .then((videoInputDevices) => {
                    const sourceSelect = document.getElementById('sourceSelect')
                    selectedDeviceId = videoInputDevices[0].deviceId
                    if (videoInputDevices.length > 1) {
                        videoInputDevices.forEach((element) => {
                            const sourceOption = document.createElement('option')
                            sourceOption.text = element.label
                            sourceOption.value = element.deviceId
                            sourceSelect.appendChild(sourceOption)
                        })

                        sourceSelect.onchange = () => {
                            selectedDeviceId = sourceSelect.value;
                        }

                        const sourceSelectPanel = document.getElementById('sourceSelectPanel')
                        sourceSelectPanel.style.display = 'block'
                    }

                    document.getElementById('startButton').addEventListener('click', () => {
                        codeReader.decodeOnceFromVideoDevice(selectedDeviceId, 'video').then((result) => {
                            console.log(result)
                            document.getElementById('result').textContent = result.text
                            window_text(result.text)
                        }).catch((err) => {
                            console.error(err)
                            document.getElementById('result').textContent = err
                        })
                        console.log(`Started continous decode from camera with id ${selectedDeviceId}`)
                    })

                    document.getElementById('resetButton').addEventListener('click', () => {
                        document.getElementById('result').textContent = '';
                        codeReader.reset();
                        console.log('Reset.')
                    })

                })
                .catch((err) => {
                    console.error(err)
                })
        })
    </script>
    <script>
    function Start() {
      var x = document.getElementById("demo-content");
      x.style.display = "block";
    }
    function Reset() {
      var x = document.getElementById("demo-content");
      x.style.display = "none";
    }
    </script>
    <script>
function window_text(text) {
  var txt;
  if (confirm("Insert the code "+text+"?")) {
    txt = "The Student code is "+text+".";
    document.getElementById('resetButton').click();
    document.getElementById("student-code").value = text;
  } else {
    txt = "Not found the Code!";
    document.getElementById('startButton').click();
  }
  document.getElementById("demo").innerHTML = txt;
}
</script>
    <script type="text/javascript">
        window.addEventListener('load', function () {
            let selectedDeviceId;
            const codeReader = new ZXing.BrowserBarcodeReader()
            console.log('ZXing code reader initialized')
            codeReader.getVideoInputDevices()
                .then((videoInputDevices) => {
                    const sourceSelect = document.getElementById('sourceSelect1')
                    selectedDeviceId = videoInputDevices[0].deviceId
                    if (videoInputDevices.length > 1) {
                        videoInputDevices.forEach((element) => {
                            const sourceOption = document.createElement('option')
                            sourceOption.text = element.label
                            sourceOption.value = element.deviceId
                            sourceSelect.appendChild(sourceOption)
                        })

                        sourceSelect.onchange = () => {
                            selectedDeviceId = sourceSelect.value;
                        }

                        const sourceSelectPanel = document.getElementById('sourceSelectPanel1')
                        sourceSelectPanel.style.display = 'block'
                    }

                    document.getElementById('startButton1').addEventListener('click', () => {
                        codeReader.decodeOnceFromVideoDevice(selectedDeviceId, 'video1').then((result) => {
                            console.log(result)
                            document.getElementById('result1').textContent = result.text
                            window_text1(result.text)
                        }).catch((err) => {
                            console.error(err)
                            document.getElementById('result1').textContent = err
                        })
                        console.log(`Started continous decode from camera with id ${selectedDeviceId}`)
                    })

                    document.getElementById('resetButton1').addEventListener('click', () => {
                        document.getElementById('result1').textContent = '';
                        codeReader.reset();
                        console.log('Reset.')
                    })

                })
                .catch((err) => {
                    console.error(err)
                })
        })
    </script>
    <script>
        function Start1() {
          var x = document.getElementById("demo-content1");
          x.style.display = "block";
        }
        function Reset1() {
          var x = document.getElementById("demo-content1");
          x.style.display = "none";
        }
    </script>
    <script>
function window_text1(text) {
  var txt;
  if (confirm("Insert the code "+text+"?")) {
    txt = "The Equipament code is "+text+".";
    document.getElementById('resetButton1').click();
    document.getElementById("equipament-code").value = text;
  } else {
    txt = "Not found the Code!";
    document.getElementById('startButton1').click();
  }
  document.getElementById("demo1").innerHTML = txt;
}
</script>

