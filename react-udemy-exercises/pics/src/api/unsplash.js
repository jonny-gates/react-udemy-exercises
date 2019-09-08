import axios from 'axios'

export default axios.create({
  baseURL: 'https://api.unsplash.com',
  headers: {
    Authorization: 'Client-ID 6dafe63847e773eb536c27adb18996068d4a85c32f7d5315cd335e94fb209103'
  }
});